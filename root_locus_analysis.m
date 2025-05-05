clc
clear
close all

% Part A
p_a = [0+0j,-0.5+0j];
z_a = -1;
plot_root_locus(p_a,z_a)

% Part B
p_b = [-0.25+1i,-0.25-1i];
z_b = -1;
plot_root_locus(p_b,z_b)

% Part C
p_c = 0;
z_c = -1;
plot_root_locus(p_c,z_c)

% Part D
p_d = [0,-0.33];
z_d = [-0.66,-1];
plot_root_locus(p_d,z_d)

% Part E
p_e = [-0.75+1i,-0.75-1i,0.33];
z_e = [];
plot_root_locus(p_e,z_e)

% Part F
p_f = [-1+0.5i,-1-0.5i,0+0.2i,0-0.2i,0.5];
z_f = -0.5;
plot_root_locus(p_f,z_f)

