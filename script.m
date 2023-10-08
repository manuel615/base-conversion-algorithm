clear
clc
close

% "This program converts a number from the set of real numbers, 
% which is in a base within the range [2, 36] (inclusive of both 
% endpoints), to another base (also within the range of 2 to 36, 
% inclusive of both endpoints). You can input numbers with letters 
% since the initial base can be different from 10; these numbers 
% will naturally be treated as strings and then converted to base 
% ten before being converted to the target base."

baseA = input('From base: ');
baseB = input('To base: ');
number = input('Enter the number you want to convert: ', 's');
digitCount = input(['Enter the number of digits you want the number ' ...
    'to have: ']);

fprintf('\nConverted number: %s\n', convReal(number, baseA, baseB, ...
    digitCount));

clear
close