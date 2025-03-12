% Takes numerator and denominator parameters and returns the
% poles and residues of the expanded fraction

function partialFractionsCalculator(num,den)

% Computes partial fraction decomposition
[r, p, k] = residue(num, den);

% Displays results
disp('Residues (coefficients of partial fractions):'), disp(r)
disp('Poles (denominator roots):'), disp(p)

% Displays direct term if it is an improper fraction
if length(num)>length(den)
    disp('Direct term:'), disp(k)
end

end