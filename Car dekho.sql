-- Car Dekho Used Cars SQL Mini Project --
create schema cars;
use cars;
-- READ DATA --
select * from cars.car_dekho;
-- Total cars: To get count of total records --
select count(*) from car_dekho;
-- How many cars will be available in 2023 --
select count(*) from car_dekho where year = 2023;
-- How many cars will be available in 2020, 2021,2022 --
select year, count(*) from car_dekho where year in(2020, 2021, 2022) group by  year;
-- print total of all cars by year --
select year, count(*) from car_dekho group by year;
-- Diesel cars in 2020 --
select year, count(*) from car_dekho where fuel = "diesel" and year = 2020;
-- Petrol cars in 2020 --
select year, count(*) from car_dekho where fuel = "petrol" and year = 2020;
-- Print all fuel cars by year --
select year, fuel, count(*) from cars.car_dekho where fuel = "petrol" group by year;
select year, fuel, count(*) from cars.car_dekho where fuel = "diesel" group by year;
select year, fuel, count(*) from cars.car_dekho where fuel = "cng" group by year;
-- Years that have more than 100 cars --
select year, count(*) from cars.car_dekho group by year having count(*) > 100;
-- Years that have less than 50 cars --
select year, count(*) from cars.car_dekho group by year having count(*) < 50;
-- Complete car count between 2015 and 2023 --
select count(*) from cars.car_dekho where year between 2015 and 2023;
-- Complete car details between 2015 and 2023 --
select * from cars.car_dekho where year between 2015 and 2023;

-- END --
