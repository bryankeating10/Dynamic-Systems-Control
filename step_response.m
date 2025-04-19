% Problem 3.25

k = 3.02; % Gain
num=[k];
den=[1, 2, k];
sys=tf(num,den);
t=0:.01:7;
y=step(sys,t);
plot(t,y);
yss = dcgain(sys);
Mp =(max(y)- yss)*100;
%Finding maximum overshoot
msg_overshoot = sprintf("Max overshoot = %3.2f", Mp);
%Finding peak time
idx = max( nd(y==(max(y))));
tp = t(idx);
msg_peaktime = sprintf("Peak time = %3.2f" , tp);
xlabel( Time (sec) );
ylabel( y(t) );
msg_title = sprintf("Step Response with K=%3.2f" ,K);
title(msg_title);
text(1.1, 0.3, msg_overshoot);
text(1.1, 0.1, msg_peaktime);
grid on;