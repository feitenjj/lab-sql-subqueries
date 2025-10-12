-- 1.Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.

SELECT 
    f.title,
    COUNT(i.inventory_id) AS total_copies
FROM sakila.film AS f
JOIN sakila.inventory AS i
    ON f.film_id = i.film_id
WHERE f.title = 'Hunchback Impossible';

-- 2. List all films whose length is longer than the average length of all the films in the Sakila database.
SELECT title, length
FROM sakila.film
WHERE length > (SELECT AVG(length) FROM sakila.film);

-- 3.Use a subquery to display all actors who appear in the film "Alone Trip".
SELECT * FROM sakila.film -- film_id title 
SELECT * FROM sakila.film_actor -- actor_id film_id


SELECT actor_id FROM sakila.film_actor
WHERE film_id = (SELECT film_id
FROM sakila.film
WHERE title = "Alone Trip");
