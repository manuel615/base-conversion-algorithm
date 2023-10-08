function [output] = convInt(number, base)

    symbols = ['0':'9', 'A':'Z'];
    output = '';
    
    % Algorithm for base conversion using division
    % for the integer part of the real number
    while (number ~= 0)
        remainder = rem(number, base);
        number = fix(number / base);
        output = strcat(symbols(remainder + 1), output);
    end

end

