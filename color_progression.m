function rgb_matrix = color_progression(N)
% Returns a 3xN RGB matrix from red to yellow to green

    if N < 3
        error('N must be at least 3 to show a full gradient.');
    end

    % Indices for red→yellow and yellow→green segments
    mid = ceil(N/2);

    % Red to yellow: [1, 0, 0] → [1, 1, 0]
    r1 = ones(1, mid);                % R stays 1
    g1 = linspace(0, 1, mid);         % G goes 0 → 1
    b1 = zeros(1, mid);               % B stays 0

    % Yellow to green: [1, 1, 0] → [0, 1, 0]
    r2 = linspace(1, 0, N - mid);     % R goes 1 → 0
    g2 = ones(1, N - mid);            % G stays 1
    b2 = zeros(1, N - mid);           % B stays 0

    % Combine both segments
    r = [r1, r2];
    g = [g1, g2];
    b = [b1, b2];

    % Create 3xN RGB matrix
    rgb_matrix = [r; g; b];
end
