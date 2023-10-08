function [output] = convReal(number, baseA, baseB, i)

    % If the user enters a blank space instead of a number, it will result 
    % in an error
    if (isempty(number))
        error('You have not entered a number.');
    end

    % If the user enters a blank space instead of the starting base, it
    % will result in an error
    if (isempty(baseA))
        error('You have not entered the starting base.');
    end

    % If the user enters a blank space instead of the target base, it
    % will result in an error
    if (isempty(baseB))
        error('You have not entered the target base.');
    end

    % If the user enters a blank space instead of the number of digits
    % desired, it will result in an error
    if (isempty(i))
        error('You have not entered the number of digits desired.');
    end
    
    % If the user does not enter a number for the desired number of digits, 
    % it will result in an error.
    if(~isnumeric(i))
        error(['You have entered an incorrect input for the desired ' ...
            'number of digits.'])
    end
    
    % This 'if' statement checks whether the string is composed of 
    % characters other than Arabic numerals, letters, or periods. 
    % In case there are unwanted symbols, it will print an error
    if numel(number)-numel(regexp(number,'[a-zA-Z0-9]|\.','match')) ~= 0

        error(['You entered not a valid number. The number you must ' ...
            'enter should be like this: "a-zA-Z0-9.a-zA-Z0-9" or ' ...
            'without the period.']);
    end

    % This 'if' statement checks if there is at least one period in the 
    % string, because if there is at least one period, it means the number
    % would be a fractional number
    if ~isempty(regexp(number, '\.', 'match'))

        % In here, it means there are periods in the middle of the string.

        % If the string starts with a period, it is incorrect because the 
        % string should start at least like this: '0.233abc,' not 
        % '.233abc.'. Or the occurrences of periods must not exceed one."
        if (number(1) == '.' || numel(regexp(number, '\.', 'match')) > 1)
            error('You did not enter a valid number');
        end

    end
    
    % This if checks if the bases are in a range of 2 to 36
    if ~isnumeric(baseA) || baseA < 2 || baseA > 36 || ...
            fix(baseA) ~= baseA|| ~isnumeric(baseB) || ...
            baseB < 2 || baseB > 36 || fix(baseB) ~= baseB

        error(['The bases must be a number within a range of 2 to 36, ' ...
            'inclusive.']);
    end
    
    integerPart = 0;

    % This if works if only the starting base is not 10. If the starting
    % base is not 10, we would have some letters that need to be 
    % manipulated in such a way that they get converted to base 10
    if baseA ~= 10

        % integerPartString will store the integer part of the number,
        % but as a string because we may have letters in the number
        % since the starting base is different from 10.
        % fractionalPartString, instead, will store the fractional part

        [integerPartString, fractionaPartString] = strtok(number, '.');

        % integerPart will store the integer part as a decimal number,
        % as the function convIntFromBaseXto10 converts a number from
        % base X to base 10
        integerPart = convIntFromBaseXto10(integerPartString, baseA);

        % fractionalPartString gets a slight modification here, which 
        % involves removing the initial dot symbol. This is because it 
        % is a fractional number, for the convenience of the function 
        % that will convert the fractional part to base 10
        fractionaPartString = fractionaPartString(2:end);

        % fractionalPart will store the fractional part as a decimal
        % number, as the function convFractFromBaseXto10 converts a 
        % number from base X[2, 36] to base 10
        fractionalPart = convFractFromBaseXto10(fractionaPartString, ...
            baseA);
    end
   
    % This if works only if there is an integer part in the real number
    if fix(integerPart) > 0

        % Simple integer conversion from base 10 to base X [2, 36]
        integerPart = convInt(fix(integerPart), baseB);
    end
    
    % This if works only if there is a fractional part in the real number
    if fractionalPart ~= 0

        % Simple fractional conversion from base 10 to base X [2, 36].
        % The variable 'i' is used to represent the number of digits 
        % desired for the number
        fractionalPart = convFract(fractionalPart, baseB, i);

        output = strcat(num2str(integerPart), num2str(fractionalPart));
    
    % If there is no fractional part in the real number, the output 
    % will simply be the integer part
    else
        output = integerPart;
    end

end

