
DROP VIEW IF EXISTS car_rental.view_most_popular_colors_2020;

CREATE VIEW car_rental.view_most_popular_colors_2020 AS
SELECT c.car_color, 
		COUNT(*) AS rental_count, 
        SUM(r.rental_price * r.rental_duration_days) AS total_revenue
FROM car_rental.Car AS c
JOIN car_rental.Rental AS r ON c.CarID = r.Car_carID
WHERE r.rental_date BETWEEN '01/01/2020' AND '31/12/2020'
GROUP BY c.car_color
ORDER BY rental_count DESC;

SELECT * FROM car_rental.view_most_popular_colors_2020


