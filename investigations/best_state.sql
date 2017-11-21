select state, AVG(rating_int) as average from best_state > GROUP BY state
ORDER BY average DESC
limit 10;
