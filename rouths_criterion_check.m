% Define the transfer function G(s) = (s + 2) / [s*(s - 2)*(s^2 + 2s + 10)]
% We'll use the 'tf' command to construct this
clc
clear
close all

% Define numerator and denominator of the open-loop transfer function
numerator = [1 2];  % (s + 2)

% Denominator: s*(s - 2)*(s^2 + 2s + 10)
den1 = [1 0];            % s
den2 = [1 -2];           % (s - 2)
den3 = [1 2 10];         % (s^2 + 2s + 10)
denominator = conv(conv(den1, den2), den3);  % full denominator

% Create the transfer function
G = tf(numerator, denominator);

% Plot the root locus
figure;
rlocus(G);
title(' Root Locus for $\frac{s+2}{s(s-2)(s^2 + 2s + 10)}$', ...
    'Interpreter', 'latex','FontSize',14,'FontWeight','bold');
grid on;

% 
% % Optionally, add a line showing the imaginary axis for stability reference
% xline(0, '--r', 'Imaginary Axis');
