function interactive_root_locus_picker()
    % interactive_root_locus_picker - Click to select poles and zeros, then plot root locus.
    %
    % Instructions:
    %   1. Left-click on the figure to select poles (red '×')
    %   2. Press ENTER when done selecting poles
    %   3. Left-click to select zeros (blue 'o')
    %   4. Press ENTER when done selecting zeros
    %   5. The root locus will then be plotted

    figure;
    axis([-10 10 -10 10]);
    axis equal;
    grid on;
    title({'Select Pole Locations (Press ENTER When Done)', ...
           'Then Select Zeros (Press ENTER When Done)'});
    xlabel('Real Axis'); ylabel('Imaginary Axis');
    hold on;

    % Step 1: Select Poles
    disp('Select poles by clicking. Press ENTER when done.');
    [x_p, y_p] = ginput();
    poles = x_p + 1i * y_p;
    plot(real(poles), imag(poles), 'rx', 'MarkerSize', 10, 'LineWidth', 2);

    % Step 2: Select Zeros
    title({'Now Select Zero Locations (Press ENTER When Done)'});
    disp('Now select zeros by clicking. Press ENTER when done.');
    [x_z, y_z] = ginput();
    zeros_ = x_z + 1i * y_z;
    plot(real(zeros_), imag(zeros_), 'bo', 'MarkerSize', 10, 'LineWidth', 2);

    % Step 3: Build transfer function and plot root locus
    clf;
    num = poly(zeros_);
    den = poly(poles);
    G = tf(num, den);

    rlocus(G);
    title('Root Locus Plot from Selected Poles and Zeros');
    grid on;
end
