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

% Satelite example 3
sysG3 = 0.0002/s^2;
t=0:0.01:10;            % set up time vector with dt = 0.01 sec

u1=[zeros(1,500),...
    25*ones(1,10),...   % pulse of 25N, at 5 sec, for 0.1 sec duration
    zeros(1, length(t) - 500 - 10)];      % pulse input

[y1]=lsim(sysG3,u1,t);   % linear simulation
ff=180/pi;              % conversion factor from radians to degrees
y1=ff*y1;               % output in degree
plot(t,u1);             % plot input signal
plot(t,y1);             % plot output response




