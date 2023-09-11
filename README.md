## **Document Guide for MATLAB Homework Crap Thingy Or Whatever**

## if your lazy, [click me](https://github.com/ThatError404/Matlab-Crap/releases/whatever)

---

### 1. Problem 1: Mortgage Loan Calculator

**Filename:** `Problem1.m`

---

```matlab
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
```

**Explanation for Problem 1:** 
This script first calculates the monthly payments for three different loan durations (10, 20, and 30 years) based on a borrowed amount of $280,000 and an interest rate of 4.75%. Then, it acts as an interactive loan calculator, asking the user for details and providing the monthly payment and total cost based on their input.

---

### 2. Problem 2 and 3: Plotting Equations & Temperature Analysis

**Filename:** `Problem2and3.m`

---

```matlab
% Load the temperature data
run('MATLAB_HW1_P3.m');

%% Problem 2: Graphing the Formulas

x = linspace(-5, 5, 1000);

% Formulas we're plotting
y1 = 2*x.^3 + 100;
y2 = -x.^3 - 50;
y3 = 14 - exp(x);
y4 = 20*x.^2 - 125;

% Drawing the graph
figure;
plot(x, y1, '-r', 'LineWidth', 2); hold on;
plot(x, y2, '--b', 'LineWidth', 2);
plot(x, y3, ':g', 'LineWidth', 2);
plot(x, y4, '-.m', 'LineWidth', 2);
hold off;

% Adding labels to the graph
title('Formulas Graph');
xlabel('x-axis');
ylabel('y-axis');
legend('y1', 'y2', 'y3', 'y4');

%% Problem 3: Temperature Analysis

% Calculating average temperatures for each city
averages = [mean(huntsville_temps), mean(birmingham_temps), mean(tuscaloosa_temps)];
[~, hottest_city] = max(averages);
cities = {'Huntsville', 'Birmingham', 'Tuscaloosa'};
fprintf('%s was the hottest on average in July.\n', cities{hottest_city});

% Finding the hottest and coolest day across cities
hottest_days = [max(huntsville_temps), max(birmingham_temps), max(tuscaloosa_temps)];
coolest_days = [min(huntsville_temps), min(birmingham_temps), min(tuscaloosa_temps)];
[~, city_hottest_day] = max(hottest_days);
[~, city_coolest_day] = min(coolest_days);
fprintf('%s had the hottest day in July.\n', cities{city_hottest_day});
fprintf('%s had the coolest day in July.\n', cities{city_coolest_day});
```

**Explanation for Problem 2 and 3:** 
In Problem 2, we're drawing a graph of four formulas in a given range for x values. Each formula has a unique color and style on the graph. In Problem 3, we analyze temperatures for three cities, determining which city was the hottest on average and which cities had the single hottest and coolest day in July 2023.

---

That's the breakdown of the MATLAB scripts for your homework. To use them, save each code block as the mentioned filename for an easier way) and run them in MATLAB. Make sure both files and `MATLAB_HW1_P3.m` are in the same directory when you run them.
