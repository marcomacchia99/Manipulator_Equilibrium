function tau1=compute_tau1(angle1,angle2,g,force_point1,force_point2,force_point3,moment_point1,moment_point2,moment_point3)

%take data exported from inventor
run("Assembly_DataFile.m")

%define number of links and type of joints
num_links = 2;
joint_types=[0,0];

%% compute centers of mass

%center of mass of the first link (using DataFile data)
CoM_link1 = norm(-(smiData.RigidTransform(3).translation+smiData.Solid(3).CoM));
%center of mass of the second link (using DataFile data)
CoM_link2 = norm(-(smiData.RigidTransform(5).translation+smiData.Solid(5).CoM));
%center of mass of the motor of the second link (using DataFile data)
CoM_motor2 = norm(-(smiData.RigidTransform(4).translation+smiData.Solid(4).CoM));

%center of mass of first link and first motor (as they are attached together) (using DataFile data)
CoM1 = CoM_link1*smiData.Solid(3).mass/(smiData.Solid(2).mass+smiData.Solid(3).mass)*[cos(deg2rad(angle1)) sin(deg2rad(angle1)) 0]/1000;

%center of mass of second link and second motor (as they are attached together) (using DataFile data)
%to compute it, first I find the position of the second motor and then i
%add the distance of the center of mass with respect to the position of the
%second motor
CoM2 = (CoM_motor2*[cos(deg2rad(angle1)) sin(deg2rad(angle1)) 0]+(CoM_link2-CoM_motor2)*smiData.Solid(5).mass/(smiData.Solid(5).mass+smiData.Solid(4).mass)*[cos(deg2rad(angle1+angle2)) sin(deg2rad(angle1+angle2)) 0])/1000;



%% compute tranformation matrices

%compute the origins of the two joints
origin1 = zeros(3,1);
origin2 = norm(smiData.RigidTransform(4).translation)*[cos(deg2rad(angle1)) sin(deg2rad(angle1)) 0]/1000;

T1 = transf_mat(angle1,origin1);
T2 = transf_mat(angle1+angle2,origin2);

%% define application points

%compute the three wrench application points
point1 = origin2+(norm((smiData.RigidTransform(5).translation-smiData.RigidTransform(4).translation))*[cos(deg2rad(angle1+angle2)) sin(deg2rad(angle1+angle2)) 0])/1000;
point2 = [CoM2(1)-0.2*cos(deg2rad(angle1+angle2)) CoM2(2)-0.2*sin(deg2rad(angle1+angle2)) CoM2(3)];
point3 = [CoM1(1)+0.4*cos(deg2rad(angle1)) CoM1(2)+0.4*sin(deg2rad(angle1)) CoM1(3)];

%% compute Jacobian matrices


T(:,:,1)=T1;
T(:,:,2)=T2;

J1 = compute_jacobian(T,1,joint_types,CoM1,num_links);
J2 = compute_jacobian(T,2,joint_types,CoM2,num_links);

%% compute rigid body jacobians
S_1_2 = compute_rigid_body_jacobian(CoM2,point1);
S_2_2 = compute_rigid_body_jacobian(CoM2,point2);
S_3_1 = compute_rigid_body_jacobian(CoM1,point3);

%% compute wrench
W1 = [moment_point1';force_point1'];
W2 = [moment_point2';force_point2'];
W3 = [moment_point3';force_point3'];

%% compute gravity effect
C = J1(4:6,:)'*(smiData.Solid(3).mass+smiData.Solid(2).mass)*0.453592*g' + J2(4:6,:)'*(smiData.Solid(5).mass+smiData.Solid(4).mass)*0.453592*g';

%% compute final

tau1 = -(J1'*S_3_1'*W3)-(J2'*S_1_2'*W1)-(J2'*S_2_2'*W2)-C;

end
