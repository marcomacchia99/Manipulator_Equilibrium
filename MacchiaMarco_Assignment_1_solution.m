clear
clc

addpath("matlab_functions\");

ex1_tau = zeros(2,6);
ex2_tau_and_force = zeros(2,5);

%% Ex 1.1
angle1 = 90;
angle2 = -90;

F_p1 = [0 0 0];
F_p2 = [0 0 0];
F_p3 = [0 0 0];
M_p1 = [0 0 0];
M_p2 = [0 0 0];
M_p3 = [0 0 0];

g = [0 -9.81 0];

ex1_tau(:,1) = compute_tau1(angle1,angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 1.2
angle1 = 0;
angle2 = 90;

ex1_tau(:,2) = compute_tau1(angle1,angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 1.3.1
angle1 = 30;
angle2 = 60;

F_p1 = [-0.7 -0.5 0];

g = [0 0 0];

ex1_tau(:,3) = compute_tau1(angle1,angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 1.3.2
F_p1 = [0 0 0];
F_p2 = [-0.7 -0.5 0];

ex1_tau(:,4) = compute_tau1(angle1,angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 1.4

F_p2 = [0 0 0];
F_p3 = [1.5 -0.3 0];
M_p1 = [0 0 1.2];

ex1_tau(:,5) = compute_tau1(angle1,angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 1.5

angle2 = -60;
F_p2 = [1.2 -0.2 0];
F_p3 = [-0.4 1.2 0];
M_p1 = [0 0 0];
g = [0 -9.81 0];

ex1_tau(:,6) = compute_tau1(angle1,angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 2.1
angle2 = 45;
F_p1 = [0 0 0];
F_p2 = [0 0 0];
F_p3 = [0 0 0];
M_p1 = [0 0 0];
M_p2 = [0 0 0];
M_p3 = [0 0 0];
g = [0 -9.81 0];

ex2_tau_and_force(:,1) = compute_tau2(-90+angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 2.2
angle2 = 90;

ex2_tau_and_force(:,2) = compute_tau2(-90+angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 2.3
angle2 = 45;
F_p1 = [-0.8 -0.8 0];
g = [0 0 0];

ex2_tau_and_force(:,3) = compute_tau2(-90+angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 2.4
F_p1 = [0 0 0];
F_p2 = [-0.8 -0.2 0];
M_p1 = [0 0 0.5 ];

ex2_tau_and_force(:,4) = compute_tau2(-90+angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);

%% Ex 2.5

F_p2 = [1 -0.4 0];
F_p1 = [0.5 -0.6 0];
M_p1 = [0 0 0];
g = [0 -9.81 0];

ex2_tau_and_force(:,5) = compute_tau2(-90+angle2,g,F_p1,F_p2,F_p3,M_p1,M_p2,M_p3);


clearvars -except ex1_tau ex2_tau_and_force