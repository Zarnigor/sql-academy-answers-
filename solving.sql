-- https://sql-academy.org/en/trainer/tasks/1
SELECT name
FROM Passenger;

-- https://sql-academy.org/en/trainer/tasks/2
SELECT name
FROM Company;

-- https://sql-academy.org/en/trainer/tasks/3
SELECT *
FROM Trip
WHERE town_FROM = 'Moscow';

-- https://sql-academy.org/en/trainer/tasks/4
SELECT name
FROM Passenger
WHERE name LIKE '%man';

-- https://sql-academy.org/en/trainer/tasks/5
SELECT COUNT(id) AS count
FROM Trip
WHERE Plane='TU-134';


-- https://sql-academy.org/en/trainer/tasks/6
SELECT DISTINCT Company.name AS name
FROM Trip
JOIN Company ON Trip.company = Company.id
WHERE Trip.plane LIKE 'Boeing%';


-- https://sql-academy.org/en/trainer/tasks/7
SELECT DISTINCT Plane FROM Trip
WHERE town_to = 'Moscow'

-- https://sql-academy.org/en/trainer/tasks/8
SELECT town_to, SEC_TO_TIME(TIME_TO_SEC(time_in)-TIME_TO_SEC(time_out)) as flight_time
FROM Trip
WHERE town_from = 'Paris';


-- https://sql-academy.org/en/trainer/tasks/9
SELECT DISTINCT company.name from Trip
JOIN Company on Trip.company = Company.id
WHERE Trip.town_from='Vladivostok'