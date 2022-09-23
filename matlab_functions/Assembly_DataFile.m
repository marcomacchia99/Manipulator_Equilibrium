% Simscape(TM) Multibody(TM) version: 7.5

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(5).translation = [0.0 0.0 0.0];
smiData.RigidTransform(5).angle = 0.0;
smiData.RigidTransform(5).axis = [0.0 0.0 0.0];
smiData.RigidTransform(5).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 0];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = "RootGround[Basis v1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0 0 0];  % mm
smiData.RigidTransform(2).angle = 0;  % rad
smiData.RigidTransform(2).axis = [0 0 0];
smiData.RigidTransform(2).ID = "SixDofRigidTransform[Motor v1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 -1150 0];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = "SixDofRigidTransform[Link1 v1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [0 -1000 0];  % mm
smiData.RigidTransform(4).angle = 0;  % rad
smiData.RigidTransform(4).axis = [0 -1 0];
smiData.RigidTransform(4).ID = "SixDofRigidTransform[Motor v1:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 -2000 0];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = "SixDofRigidTransform[Link2 v1:1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(5).mass = 0.0;
smiData.Solid(5).CoM = [0.0 0.0 0.0];
smiData.Solid(5).MoI = [0.0 0.0 0.0];
smiData.Solid(5).PoI = [0.0 0.0 0.0];
smiData.Solid(5).color = [0.0 0.0 0.0];
smiData.Solid(5).opacity = 0.0;
smiData.Solid(5).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 1543.1025100685933;  % lbm
smiData.Solid(1).CoM = [0 229.351957327972 0];  % mm
smiData.Solid(1).MoI = [33761199.425473645 139160774.56540343 128561386.59106831];  % lbm*mm^2
smiData.Solid(1).PoI = [2.5788378091920747e-08 0 5.5005919422771078e-05];  % lbm*mm^2
smiData.Solid(1).color = [1 1 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Basis v1.ipt_{6230BDB8-4E2E-FACE-4A71-49A29C217823}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 195.85183227550272;  % lbm
smiData.Solid(2).CoM = [0 0 0];  % mm
smiData.Solid(2).MoI = [5622309.4336736733 5621392.3736273888 1171331.466143304];  % lbm*mm^2
smiData.Solid(2).PoI = [2872.9814374921302 -1436.4912141653199 611.27264643296621];  % lbm*mm^2
smiData.Solid(2).color = [0.18823529411764706 0.23137254901960785 0.58823529411764708];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Motor1 v1.ipt_{97360B4D-41A6-1B65-3C51-848FD986126D}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 1741.0622898397542;  % lbm
smiData.Solid(3).CoM = [0 650 0];  % mm
smiData.Solid(3).MoI = [213899006.95700559 26546004.036020242 214329076.64542949];  % lbm*mm^2
smiData.Solid(3).PoI = [0 0 8.0588681533427927e-10];  % lbm*mm^2
smiData.Solid(3).color = [1 1 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Link1 v1.ipt_{86331E22-4E62-1C2F-693A-0E85D2B2066D}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 195.85183227550272;  % lbm
smiData.Solid(4).CoM = [0 0 0];  % mm
smiData.Solid(4).MoI = [5622309.4336736733 5621392.3736270722 1171331.4661429871];  % lbm*mm^2
smiData.Solid(4).PoI = [-2872.9814374905195 1436.4902233268101 611.27264611675662];  % lbm*mm^2
smiData.Solid(4).color = [1 1 1];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Motor2 v1.ipt_{34B1C9E8-41E7-E836-8DE0-93A0CAFBBD2A}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 1923.8408368618771;  % lbm
smiData.Solid(5).CoM = [0 468.3543583908006 0];  % mm
smiData.Solid(5).MoI = [175009178.7137703 42101345.045752145 162596914.31189269];  % lbm*mm^2
smiData.Solid(5).PoI = [0 6.4470945229801868e-09 -0.00012746784893544546];  % lbm*mm^2
smiData.Solid(5).color = [0.7686274509803922 0.20784313725490197 0.15294117647058825];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Link2 v1.ipt_{8E93BD54-4AC1-F0DC-B53E-94965314E830}";

