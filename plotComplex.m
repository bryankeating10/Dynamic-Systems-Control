%{
DESCRIPTION:
    Plots the real and imaginary components of a number. Must initialize
    figure before calling.
INPUT:
    z: Matrix of numbers for plotting size (1 x n)
    m: Input options: 'pole' or 'zero'
OUTPUT:
    Plots the numbers on a complex plane. Zeros plotted with 'o',
    poles plotted with 'x'.
%}

function plotComplex(z,m)
    len = length(z);
    grid on; hold on;
    for i=1:len
        if m(i) == "pole"
            plot(real(z(i)), imag(z(i)), 'bx', 'MarkerSize', 10, 'LineWidth', 2);
        elseif m(i)== "zero"
            plot(real(z(i)), imag(z(i)), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
        else
            disp("Not a valid zero or pole distiction")
        end
    end
    xlabel('Real Axis'); ylabel('Imaginary Axis'); title('Complex Number Plot');

    real_vals = real(z);
    imag_vals = imag(z);
    real_min = min(real_vals); real_max = max(real_vals);
    imag_min = min(imag_vals); imag_max = max(imag_vals);
    
    real_range = real_max - real_min;
    imag_range = imag_max - imag_min;

    buffer_x = 0.1 * real_range;  % 10% buffer for x-axis
    buffer_y = 0.1 * imag_range;  % 10% buffer for y-axis
    if real_range ~= 0
        xlim([real_min - buffer_x, real_max + buffer_x]);
    end
    if imag_range ~= 0
        ylim([imag_min - buffer_y, imag_max + buffer_y]);
    end
    xline(0, 'k--'); yline(0, 'k--');
end
