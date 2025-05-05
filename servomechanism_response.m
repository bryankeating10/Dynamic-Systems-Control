s = tf('s');

% Original plant
G = 10 / (s*(s + 1)*(s + 10));

% Lead compensator
Lead = (s + 2)/(s + 8);

% Lag compensator
Lag = (s + 0.1)/(s + 0.01);

% Full compensator with variable gain K
Dc = Lead * Lag;

% Open-loop transfer function
Gol = Dc * G;

% Root locus plot
figure;
rlocus(Gol);
title('Root Locus of Final Design', 'Interpreter', 'latex');
grid on;

% Mark desired dominant pole location
hold on;
plot(-2.26, 3.91, 'rx', 'MarkerSize', 10, 'LineWidth', 2);
plot(-2.26, -3.91, 'rx', 'MarkerSize', 10, 'LineWidth', 2);

% Choose K = 100 to satisfy Kv > 20
K = 100;

% Closed-loop system
T = feedback(K * Gol, 1);

% Step response
figure;
step(T);
title('Step Response of Final Design');
grid on;
