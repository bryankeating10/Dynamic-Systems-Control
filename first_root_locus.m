clc
clear
close all

s = tf('s');
G = 1 / (s * (s + 2));

% Create root locus plot using rlocusplot
h = rlocusplot(G);
title('Root Locus with Customized Grid')
grid on