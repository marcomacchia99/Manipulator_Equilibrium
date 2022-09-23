%compute transformation matrix given rotation matrix and origin
function T = transf_mat(angle,origin)

T = zeros(4,4);
T(4,4) = 1;
T(1:3,1:3)=rot_mat(angle);
T(1:3,4) = origin';

end