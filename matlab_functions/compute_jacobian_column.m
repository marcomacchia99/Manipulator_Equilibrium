%compute the jacobian columns, depending on the joint type, given the k
%vector and the r vector
% - jointType: number identifying the joint type, 0 for rotational, 1 for
%   prismatic
function column = compute_jacobian_column (k, r, joint_type)

if(~(joint_type==0 || joint_type==1))
     error("Joint Type must be 0 (rotational) or 1 (prismatic)");
end  

if (joint_type == 0)   %Rotational
    Ja = k; 
    Jl = cross(k, r);    
end

if (joint_type == 1)   %Prismatic 
    Ja = zeros(3,1);
    Jl = k;
end



column = [Ja;Jl];

end