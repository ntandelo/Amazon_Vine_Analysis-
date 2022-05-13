CREATE TABLE helful_reviews AS 
  SELECT *
  FROM vine_table
  WHERE total_votes > 20;

  CREATE TABLE ratio_reviews AS 
  SELECT *
  FROM vine_table
  WHERE helpful_votes>0
  AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

  CREATE TABLE vine_paid AS 
  SELECT *
  FROM vine_table
  WHERE vine = 'Y'

CREATE TABLE vine_unpaid AS 
  SELECT *
  FROM vine_table
  WHERE vine = 'N'

SELECT COUNT(review_id) FROM vine_paid;
(10215)

SELECT COUNT(review_id) FROM vine_paid WHERE star_rating = 5;
(4343)

SELECT star_rating, count(*) * 100.0 / (select count(*) from vine_paid) AS percentage
FROM vine_paid
GROUP BY star_rating
ORDER BY star_rating DESC;
(42.51%)

SELECT COUNT(review_id) FROM vine_unpaid;
(2633399)

SELECT COUNT(review_id) FROM vine_unpaid WHERE star_rating = 5;
(1641210)

SELECT star_rating, count(*) * 100.0 / (select count(*) from vine_unpaid) AS percentage
FROM vine_unpaid
GROUP BY star_rating
ORDER BY star_rating DESC;
(62.32%)