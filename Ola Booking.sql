select * from bookings

--1. Retrieve all successful bookings:

create view successful_bookings as
select * from bookings
where booking_status = 'Success';

--2. Find the average ride distance for each vehicle type:

ALTER TABLE bookings
RENAME COLUMN "ride_distance_(km)" TO ride_distance;

create view avg_distances as
select vehicle_type, round(avg(ride_distance))
as avg_distance from bookings
group by vehicle_type;

--3. Get the total number of cancelled rides by customers:

create view Cancelled_by_Customer as
select count(*) from bookings
where booking_status = 'Cancelled by Customer'

--4. List the top 10 customers who booked the highest number of rides:

create view top_10_customers as
select customer_id, count (booking_id) as total_rides
from bookings
group by customer_id
order by total_rides desc limit 10;


--5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Rides_cancelled_by_Drivers_P_C_Issues As
select count(*) from bookings
where reason_for_cancelling_by_driver = 'Personal & Car related issues';
SELECT DISTINCT reason_for_cancelling_by_driver FROM bookings;


--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view max_and_min_rating as
select max(driver_rating) as max_rating, 
min(driver_rating) as min_rating
from bookings where vehicle_type = 'Prime Sedan';

--7.Find the busiest booking hour of the day:

Create View Busiest_Booking_Hour As
SELECT EXTRACT(HOUR FROM time::time) AS booking_hour,
COUNT(*) AS total_rides
FROM bookings
GROUP BY booking_hour
ORDER BY total_rides DESC;

--8. Find the average customer rating per vehicle type:


Create View AVG_Custom_Rating As
SELECT Vehicle_Type, round(AVG(Customer_Rating))as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;


--9. Calculate the total booking value of rides completed successfully:

ALTER TABLE bookings
RENAME COLUMN "booking_value_(inr)" TO booking_value;

Create View total_booking_value As
select round(Sum(booking_value)) as total_booking_value
from bookings
where booking_status = 'Success';


--10. List all incomplete rides along with the reason:

Create View Incomplete_Rides_Reason As
SELECT booking_id, incomplete_rides_reason
FROM bookings
WHERE incomplete_rides = 1;

--1. Retrieve all successful bookings:
select * from Successful_Bookings;

--2. Find the average ride distance for each vehicle type:
select * from Avg_Distances;

--3. Get the total number of cancelled rides by customers:
select * from Cancelled_By_Customer;

--4. List the top 5 customers who booked the highest number of rides:
select * from Top_10_Customers;

--5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from Rides_Cancelled_By_Drivers_P_C_Issues;

--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from Max_And_Min_Rating;

--7. Find the busiest booking hour of the day:
select * from Busiest_Booking_Hour;

--8. Find the average customer rating per vehicle type:
select * from AVG_Custo_Rating;

--9. Calculate the total booking value of rides completed successfully:
select * from Total_Booking_Value;

--10. List all incomplete rides along with the reason:
select * from Incomplete_Rides_Reason;