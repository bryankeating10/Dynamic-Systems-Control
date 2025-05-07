function rgb_matrix = color_progression(N)
% Returns a 3xN RGB matrix transitioning from red → yellow → green → blue

    if N < 4
        error('N must be at least 4 to show the full color progression.');
    end

    % Divide N into three segments for the transitions
    seg_len = floor(N / 3);
    rem = mod(N, 3);

    % Adjust segment lengths so the sum equals N
    seg1 = seg_len + (rem > 0);  % red → yellow
    seg2 = seg_len + (rem > 1);  % yellow → green
    seg3 = seg_len;              % green → blue

    % Transition 1: Red [1 0 0] → Yellow [1 1 0]
    r1 = ones(1, seg1);
    g1 = linspace(0, 1, seg1);
    b1 = zeros(1, seg1);

    % Transition 2: Yellow [1 1 0] → Green [0 1 0]
    r2 = linspace(1, 0, seg2);
    g2 = ones(1, seg2);
    b2 = zeros(1, seg2);

    % Transition 3: Green [0 1 0] → Blue [0 0 1]
    r3 = zeros(1, seg3);
    g3 = linspace(1, 0, seg3);
    b3 = linspace(0, 1, seg3);

    % Combine all color segments
    r = [r1, r2, r3];
    g = [g1, g2, g3];
    b = [b1, b2, b3];

    % Assemble into a 3xN RGB matrix
    rgb_matrix = [r; g; b];
end
