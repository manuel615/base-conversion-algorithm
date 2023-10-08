function [output] = convFract(number, base, i)
    
    symbols = ['0':'9', 'A':'Z'];
    output = '.';
    k = 0;

    % Algorithm for base conversion using 
    % multiplication for the integer part 
    % of the real number
    while (number ~= 0 && k < i)
        integer_part = fix(number * base);
        number = number * base - integer_part;
        output = strcat(output, symbols(integer_part + 1));
        k = k + 1;
    end

end

