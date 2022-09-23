%compute rotation matrix
function rotm = rot_mat(angle)

rotm = zeros(3,3);
rotm(3,3) = 1;
rotm(1,1) = cos(deg2rad(angle));
rotm(2,2) = cos(deg2rad(angle));
rotm(1,2) = -sin(deg2rad(angle));
rotm(2,1) = sin(deg2rad(angle));

end