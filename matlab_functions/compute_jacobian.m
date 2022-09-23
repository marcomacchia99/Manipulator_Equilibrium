%compute the jacobian matrix, given all the transformation matrices, the
%numer of joints, the joint types, the center of mass of the link and the
%total number of links
% - jointType: number identifying the joint type, 0 for rotational, 1 for
%   prismatic
function J = compute_jacobian(T, joint_num, joint_types,CoM , num_links)

J = zeros(6,num_links);

%using the standard assembly file, when the first joint is a prismatic one,
%the k axis is no longer the 3rd column of the rotation matrix but becomes
%the first column (according to DH convention)
for i=1:joint_num
    %compute k vector depending on the joint type
    if (joint_types(i) == 0)   %Rotational
        k=T(1:3,3,i);    
    end

    if (joint_types(i) == 1)   %Prismatic 
        k=T(1:3,1,i);
    end
    %compute r vector
    r = CoM' - T(1:3,4,i);
    
    %compute the jacobian matrix
    J(:, i) = compute_jacobian_column(k, r, joint_types(i));
end

end