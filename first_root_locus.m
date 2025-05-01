clc
clear
close all

% Define transfer function (without gain K yet)
s = tf('s');
G = 1 / (s*(s+2));

% Plot root locus
figure
rlocus(G)
title('Root Locus of G(s) = 1 / (s(s+2))')
grid on