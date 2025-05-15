/*CHINOOK PROJECT

QUESTION 1: Which countries have the most invoices?*/
SELECT
	BillingCountry,
    COUNT(InvoiceId) AS number_invoices
FROM invoice
GROUP BY BillingCountry
ORDER BY COUNT(InvoiceId) DESC;

/*QUESTION 2*: Which city has the best customers?*/
SELECT
	BillingCity,
    SUM(total) AS invoice_total
FROM invoice
GROUP BY BillingCity
ORDER BY SUM(total) DESC
LIMIT 1;

/*QUESTION 3: Provide the email, first name, last name, and genre of all Rock music listeners, ordered alphabetically by email*/
SELECT DISTINCT
	customer.FirstName,
	customer.LastName,
	customer.Email,
	genre.`Name`
FROM genre
	JOIN track
		ON genre.GenreId = track.GenreId
    JOIN invoiceline
		ON track.TrackId = invoiceline.TrackId
	JOIN invoice
		ON invoiceline.InvoiceId = invoice.InvoiceId
	JOIN customer
		ON invoice.CustomerId = customer.CustomerId
WHERE genre.`Name` = "Rock"
ORDER BY customer.Email;
    
/*QUESTION 4: What artists are in the top 10 of the Rock genre*/
SELECT
	artist.ArtistId,
    artist.`Name`,
    COUNT(track.`Name`) AS song
FROM artist
	JOIN album
		ON artist.ArtistId = album.ArtistId
	JOIN track
		ON album.AlbumId = track.AlbumId
	JOIN genre
		ON track.GenreId = genre.GenreId
WHERE genre.`Name` IN ("Rock")
GROUP BY artist.ArtistId, artist.`Name`
ORDER BY COUNT(track.`Name`) DESC
LIMIT 10;

/*QUESTION 5:  Who is the best customer?*/
SELECT
	customer.FirstName,
    customer.LastName,
    SUM(invoice.Total) AS total_spent
FROM customer
	JOIN invoice
		ON customer.CustomerId = invoice.CustomerId
GROUP BY customer.FirstName, customer.LastName
ORDER BY total_spent DESC
LIMIT 1;