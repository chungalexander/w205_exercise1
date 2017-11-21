select rating_int, AVG(performance) as average_performance from nurse_rating
GROUP BY rating_int
ORDER BY rating_int DESC;
