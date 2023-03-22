/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to list the local authorities and services provided by all stations.*/


SELECT station.local_authority, station.services 
FROM station

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to show all train numbers and names ordered by their time from early to late.*/


SELECT train_number, name 
FROM train 
ORDER BY time ASC

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Give me the times and numbers of all trains that go to Chennai, ordered by time.*/


SELECT train.train_number, train.time 
FROM train 
INNER JOIN route ON train.id = route.train_id 
INNER JOIN station ON route.station_id = station.id 
WHERE station.network_name = 'Chennai' 
ORDER BY train.time

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to answer How many trains have 'Express' in their names?*/


SELECT COUNT(*)
FROM train
WHERE name LIKE '%Express%'

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find the number and time of the train that goes from Chennai to Guruvayur.*/


SELECT train.train_number, train.time 
FROM train 
INNER JOIN route ON train.id = route.train_id 
INNER JOIN station ON route.station_id = station.id 
WHERE train.origin = 'Chennai' AND train.destination = 'Guruvayur'

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find the number of trains starting from each origin.*/


SELECT origin, COUNT(*) AS num_trains
FROM train
GROUP BY origin

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find the name of the train whose route runs through greatest number of stations.*/


SELECT t.name
FROM train t
INNER JOIN route r ON t.id = r.train_id
GROUP BY t.name
ORDER BY COUNT(r.station_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find the number of trains for each station, as well as the station network name and services.*/


SELECT s.network_name, s.services, COUNT(r.train_id) AS num_trains
FROM station s
INNER JOIN route r ON s.id = r.station_id
GROUP BY s.network_name, s.services

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to answer What is the average high temperature for each day of week?*/


SELECT day_of_week, AVG(high_temperature)
FROM weekly_weather
GROUP BY day_of_week

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Give me the maximum low temperature and average precipitation at the Amersham station.*/


SELECT MAX(low_temperature), AVG(precipitation)
FROM weekly_weather
INNER JOIN station
ON weekly_weather.station_id = station.id
WHERE station.network_name = 'Amersham'

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find names and times of trains that run through stations for the local authority Chiltern.*/


SELECT train.name, train.time 
FROM train 
INNER JOIN route ON train.id = route.train_id 
INNER JOIN station ON route.station_id = station.id 
WHERE station.local_authority = 'Chiltern'

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to answer How many different services are provided by all stations?*/


SELECT COUNT(DISTINCT services) 
FROM station

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find the id and local authority of the station with has the highest average high temperature.*/


SELECT station.id, station.local_authority
FROM station
INNER JOIN weekly_weather ON station.id = weekly_weather.station_id
GROUP BY station.id
ORDER BY AVG(weekly_weather.high_temperature) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find the id and local authority of the station whose maximum precipitation is higher than 50.*/


SELECT station.id, station.local_authority 
FROM station 
INNER JOIN weekly_weather 
ON station.id = weekly_weather.station_id 
WHERE weekly_weather.precipitation > 50

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to show the lowest low temperature and highest wind speed in miles per hour.*/


SELECT MIN(low_temperature) AS Lowest_Low_Temperature, MAX(wind_speed_mph) AS Highest_Wind_Speed_MPH
FROM weekly_weather

/*Here are Mysql tables, with their properties:

train(id, train_number, name, origin, destination, time, interval)
station(id, network_name, services, local_authority)
route(train_id, station_id)
weekly_weather(station_id, day_of_week, high_temperature, low_temperature, precipitation, wind_speed_mph)

Create a SQL request to Find the origins from which more than 1 train starts.*/


SELECT origin, COUNT(*) 
FROM train 
GROUP BY origin 
HAVING COUNT(*) > 1

