% Base excitation parameters
m = 0.102;          % kg
k = 900;            % N/m
Y = 0.1;            % Base motion amplitude (m)

% Natural frequency
omega_n = sqrt(k/m);     % rad/s

% Frequency ratio range
r = linspace(0.5, 2.5, 1000);   % r = omega / omega_n

% Try different damping ratios
zeta_values = [0.1, 0.3, 0.5, 0.707, 1.0]; 

figure;
hold on;

for zeta = zeta_values
    % Transmissibility function for base excitation
    T = (r.^2) ./ sqrt((1 - r.^2).^2 + (2*zeta*r).^2);
    relative_amplitude = T * Y;
    
    plot(r, relative_amplitude, 'DisplayName', sprintf('\\zeta = %.3f', zeta));
    
    % Calculate average relative amplitude over r = 1 to 2
    idx = r >= 1 & r <= 2;
    avg_amp = mean(relative_amplitude(idx));
    fprintf('zeta = %.3f, Average amplitude from r=1 to 2: %.4f m\n', zeta, avg_amp);
end

xlabel('\omega / \omega_n (Frequency Ratio)');
ylabel('Relative Displacement |x - y| (m)');
title('Base Excitation Response: Relative Amplitude vs Frequency Ratio');
legend show;
grid on;