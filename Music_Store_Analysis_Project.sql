/*Who is the senior most employee based on job title?*/
/*SELECT * FROM employee
ORDER BY levels DESC
LIMIT 1*/

/* Which countries have the most Invoices?*/
/*SELECT COUNT(*) AS c, billing_country
 FROM invoice
 GROUP BY billing_country
 ORDER BY c DESC*/

/* What are top 3 values of total invoice */
/* SELECT total FROM invoice
 ORDER BY total DESC
 LIMIT 3 */

/* Which city has the best customers? We would like to thrown a promotional music festival in the
 city we made the most money. Write a query that returns one city that has the highest
 sum of invoices totals. Return both the city name & sum of all invoice totals.*/
/* SELECT SUM(total) as invoice_total, billing_city
 FROM invoice
 GROUP BY billing_city
 ORDER BY invoice_total DESC */

/* Who is the best customer? The customer who has spent the most money will be declared the 
  best customer. Write a query that returns the person who has spent the most money.*/
/*SELECT customer.customer_id, first_name, last_name, SUM(total) AS total_spending
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total_spending DESC
LIMIT 1;*/

/* Write a query to return the email, first name, last name, and genre of all Rock Music 
Listeners. Return your list ordered alphabetically by email starting with A.*/
SELECT DISTINCT 
    customer.email, 
    customer.first_name, 
    customer.last_name, 
    genre.name AS genre
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
JOIN track ON invoiceline.track_id = track.track_id
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name = 'Rock'
ORDER BY customer.email;






