clc
clear
close all

% Cruise control function example

s = tf('s');                % Define Laplace transform
sysG = 0.001/(s^2+0.05*s);  % Transfer function

p = pole(sysG);             % Compute poles
[z,k] = zero(sysG);         % Compute zeros and gain

fprintf('Example 1\n');
disp('Poles: ');
disp(p);
disp('Zeros: ');
disp(z);
disp('Gain: ');
disp(k);

% Cruise control example 2
sysG2 = (3*s+9)/(s^2+6*s+25);

p2 = pole(sysG2);
[z2,k2] = zero(sysG2);

fprintf('\nExample 2\n');
disp('Poles: ');
disp(p2);
disp('Zeros: ');
disp(z2);
disp('Gain: ');
disp(k2);