%compute rigid body jacobian using the skew matrix given the center of mass
%and the application point
function S = compute_rigid_body_jacobian(CoM,p)

    S = eye(6);
    
    skew = zeros(3,3);
    skew(1,2) = -(CoM(3)-p(3));
    skew(1,3) = CoM(2)-p(2);
    skew(2,1) = CoM(3)-p(3);
    skew(2,3) = -(CoM(1)-p(1));
    skew(3,1) = -(CoM(2)-p(2));
    skew(3,2) = CoM(1)-p(1);
    
    S(4:6,1:3)=skew;

end