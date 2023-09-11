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
