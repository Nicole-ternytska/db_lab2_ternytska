query 1
SELECT game_name, ROUND(AVG(geek_ranking),2)
FROM collection INNER JOIN board_game USING(game_id)
GROUP BY game_name


query 2 
SELECT game_name, COUNT(game_id) 
FROM collection INNER JOIN board_game USING(game_id)
GROUP BY game_name


query 3 
SELECT age, COUNT(game_id)
FROM collection INNER JOIN geek USING(geek_id)
GROUP BY age
ORDER BY age;
