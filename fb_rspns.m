clc
clear
close all

% Parameters
K = 2;
tau = 3;
alpha = 0.8;

% Transfer functions
s = tf('s');
G = K / (tau*s + 1);
H = 1;

% Closed-loop system without gain
T = feedback(G, H); % G / (1 + GH)

% Apply output gain
T_final = alpha * T;

% Plot step response
step(T_final)
title('Closed-Loop Step Response with Output Gain')
xlabel('Time (s)')
ylabel('Output')
grid on
