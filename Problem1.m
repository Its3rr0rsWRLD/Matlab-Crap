% Load the temperature data for Problem 3. Even if we're not using it here, 
% it's good practice to load all necessary data at the start.
run('MATLAB_HW1_P3.m');

% Amount borrowed from bank
P = 280000;

% Monthly interest rate
r = 4.75/100/12;

% Loan durations we're considering: 10, 20, and 30 years
loan_durations = [10, 20, 30];

% Calculate monthly payment and total cost for each loan duration
for y = loan_durations
    % Monthly payment formula
    M = (P * r) / (1 - (1 + r)^(-12 * y));
    % Total amount paid over the entire loan duration
    total_cost = M * 12 * y;
    % Extra amount paid compared to the borrowed amount
    extra_cost = total_cost - P;
    
    % Display the results
    fprintf('For a %d-year loan of $%d at %.2f%% interest, monthly payment is $%.2f.\n', y, P, r*12*100, M);
    fprintf('Over %d years, total payment is $%.2f, which is $%.2f more than borrowed amount.\n\n', y, total_cost, extra_cost);
end

%% Interactive Loan Calculator

% Get loan details from user
house_cost = input('House cost? $');
down_payment = input('Upfront payment? $');
interest_rate = input('Interest rate in percentage? ');
loan_duration = input('Loan duration in years? ');

% Calculate loan details based on user input
P = house_cost - down_payment;
r = interest_rate/100/12;
M = (P * r) / (1 - (1 + r)^(-12 * loan_duration));
total_cost = M * 12 * loan_duration;
extra_cost = total_cost - P;

% Display the results based on user input
fprintf('\nFor a %d-year loan of $%d at %.2f%% interest, monthly payment is $%.2f.\n', loan_duration, P, r*12*100, M);
fprintf('Over %d years, total payment is $%.2f, which is $%.2f more than borrowed amount.\n', loan_duration, total_cost, extra_cost);
