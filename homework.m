% Homework 2 - EGR 101

%% Problem 1: Tetrahedral Number
sum_tetra = 0;
n = 0;

while sum_tetra < 100000
    n = n + 1;
    Tn = (n+1)*(n+2)*(n+3)/6;
    sum_tetra = sum_tetra + Tn;
end

fprintf('Problem 1:\n');
fprintf('Number of terms: %d\n', n);
fprintf('Final Sum: %f\n\n', sum_tetra);

%% Problem 2: Nth Fibonacci Number
N = input('Enter the value of N for Problem 2: ');

first = 1;
second = 1;

for i = 3:N
    temp = second;
    second = first + second;
    first = temp;
end

fprintf('The %dth Fibonacci number is: %d\n\n', N, second);

%% Problem 3: Card Game War
player1 = input('Enter Player 1 name: ', 's');
player2 = input('Enter Player 2 name: ', 's');

wins1 = 0;
wins2 = 0;
ties = 0;

while true
    card1 = randi([1, 13]);
    card2 = randi([1, 13]);

    if card1 > card2
        wins1 = wins1 + 1;
    elseif card2 > card1
        wins2 = wins2 + 1;
    else
        ties = ties + 1;
    end

    cont = input('Continue? (yes/no): ', 's');
    if strcmp(cont, 'no')
        break;
    end
end

fprintf('%s won %d rounds. %s won %d rounds. There were %d ties.\n\n', player1, wins1, player2, wins2, ties);

%% Problem 4: Temperature Conversion
[temp1, temp2] = Convertemp(32, 'F');
[temp1, temp2] = Convertemp(0, 'C');
[temp1, temp2] = Convertemp(273.15, 'K');

% Local function for Problem 4
function [temp1, temp2] = Convertemp(temp, unit)
    if strcmp(unit, 'F')
        C = (temp - 32) * (5/9);
        K = C + 273.15;
        fprintf('Celsius: %f, Kelvin: %f\n', C, K);
        temp1 = C;
        temp2 = K;
    elseif strcmp(unit, 'C')
        F = 9/5 * temp + 32;
        K = temp + 273.15;
        fprintf('Fahrenheit: %f, Kelvin: %f\n', F, K);
        temp1 = F;
        temp2 = K;
    else
        C = temp - 273.15;
        F = 9/5 * C + 32;
        fprintf('Celsius: %f, Fahrenheit: %f\n', C, F);
        temp1 = C;
        temp2 = F;
    end
end
