% 'Clean Energy Corps' Matlab Program

%% Initialization

% Initialize all required parameters and variables
numYears = 4; % Number of years of data
numStates = 50; % Number of states
numCities = 10; % Number of cities in each state
numVolunteers = 100; % Number of volunteers

% Preallocate arrays
stateData = zeros(numStates, numYears); 
cityData = zeros(numStates, numCities, numYears);
volunteerData = zeros(numVolunteers,numYears);
stateNameList = strings(numStates,1);
cityNameList = strings(numStates, numCities);

%% Data Input

% Use a 'for' loop to get data from the user for each state
for stateIndex = 1:numStates
    % Get state name from user
    stateNameList(stateIndex) = input('Enter the name of the state: ');
    % Get state data from user
    for yearIndex = 1:numYears
        stateData(stateIndex, yearIndex) = input('Enter the data for the year: ');
    end
    
    % Use another 'for' loop to get data from the user for each city in the state
    for cityIndex = 1:numCities
        % Get city name from user
        cityNameList(stateIndex, cityIndex) = input('Enter the name of the city: ');
        % Get city data from user
        for yearIndex = 1:numYears
            cityData(stateIndex, cityIndex, yearIndex) = input('Enter the data for the year: ');
        end
    end
end

% Use another 'for' loop to get data from the user for each volunteer
for volunteerIndex = 1:numVolunteers
    % Get volunteer data from user
    for yearIndex = 1:numYears
        volunteerData(volunteerIndex, yearIndex) = input('Enter the data for the year: ');
    end
end

%% Data Analysis and Output

% Use a 'for' loop to analyze the state data
for stateIndex = 1:numStates
    % Print the name of the state
    fprintf('State Name: %s\n', stateNameList(stateIndex));
    % Calculate the average of the data
    stateAverage = mean(stateData(stateIndex, :));
    % Print the average
    fprintf('Average Data: %.2f\n', stateAverage);
    
    % Use another 'for' loop to analyze the city data
    for cityIndex = 1:numCities
        % Print the name of the city
        fprintf('City Name: %s\n', cityNameList(stateIndex, cityIndex));
        % Calculate the average of the data
        cityAverage = mean(cityData(stateIndex, cityIndex, :));
        % Print the average
        fprintf('Average Data: %.2f\n', cityAverage);
    end
end

% Calculate the average of all volunteer data
volunteerAverage = mean(volunteerData, 1);

% Print the average of all volunteer data
fprintf('Average Volunteer Data: %.2f\n', volunteerAverage);