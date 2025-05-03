function plot_root_locus(poles, zeros)
    % plot_root_locus - Plots the root locus of a system defined by pole-zero map
    %
    % Syntax:
    %   plot_root_locus(poles, zeros)
    %
    % Inputs:
    %   poles - Vector of complex pole locations (e.g., [-2 -3 + 4i -3 - 4i])
    %   zeros - Vector of complex zero locations (e.g., [-1 + 2i -1 - 2i])
    %
    % Example:
    %   plot_root_locus([-2 -3+4i -3-4i], [-1+2i -1-2i])

    % Create transfer function numerator and denominator from zeros and poles
    s = tf('s');
    num = poly(zeros);   % Coefficients of numerator polynomial
    den = poly(poles);   % Coefficients of denominator polynomial

    % Construct open-loop transfer function with symbolic gain K
    G = tf(num, den);

    % Plot root locus
    figure;
    rlocus(G);
    title('Root Locus Plot');
    grid on;
end