clc
clear
close all

% CRUISE CONTROL TRANSFER FUNCTION EXAMPLE

s = tf('s');                % Define Laplace transform
sysG = 0.001/(s^2+0.05*s);  % Transfer function

p = pole(sysG);             % Compute poles
[z,k] = zero(sysG);         % Compute zeros and gain

disp(['Poles: ', num2str(p')]);
disp(['Zeros: ', num2str(z')]);
disp(['Gain: ', num2str(k)]);
