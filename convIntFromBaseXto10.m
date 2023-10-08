function [output] = convIntFromBaseXto10(numberStr, baseA)
   
    symbols = ['0':'9', 'A':'Z'];
    numberStr = upper(numberStr);
    output = 0;

    % Iteration over the number
    for i = 1:numel(numberStr) 

        % Take the current symbol of the number
        symbolNumberStr = numberStr(i); 

        % Iteration over the symbols
        k = 0;
        for symbol = symbols

            % This condition allows us to determine the decimal value of a letter.
            % For example: C = 12, A = 10, Z = 36.
            if symbol == symbolNumberStr
                decimalNumberInt = k;
                break;
            end
            
            % This variable gives the decimal number
            k = k + 1; 
        end

        % Counting
        % example: x * base^n + ... + y * base^2 + z * base^1 + w * base^0
        output = output + decimalNumberInt * baseA^(numel(numberStr) - i);
    end

end

