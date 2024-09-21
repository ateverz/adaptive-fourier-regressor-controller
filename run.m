%% Preparing workspace
close all; clear All; clc
addpath('controllers/','operators/','UAV/','path_planning/')
selected_control = 2; % 1 for ours, 2 for Santibañez
%% Quadrotor Parameters
% Constant mass [kg]
m = 0.4;
% Constant inertial matrix
J = [2.098e3 63.577538 -2.002648; 
     63.577538 2.102e3 0.286186; 
     -2.002648 0.286186 4.068e3]*1e-6;
%% Law Control Tunning
k = 10;
Kd = diag([1 1 1]);
alpha = 50;
%% Initial conditions
% Altitude dynamics
xip0 = [0 0 0]';
xi0  = [0 0 0]';
% Attitude dynamics
w0   = [0 0 0]';
rpy0 = [-pi/6 0.01 0.05]';
[qtd0,wd0] = tracking1(0,rpy0);
qt0 = rpy2quat(rpy0);
s0 = compute_S(alpha,qt0,qtd0,w0,wd0);
%% Regulation
zd = 1;
%% Disturbance and Fourier Controller
wF = 10;
mF = 7;
c0 = zeros(3,mF);   
ki0 = 0.01*eye(3);
%% Run Simulator
sim('x4Simulator.slx');