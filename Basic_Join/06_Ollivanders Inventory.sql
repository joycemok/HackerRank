SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands AS W
INNER JOIN Wands_Property AS WP ON W.code = WP.code
WHERE WP.is_evil = 0 AND W.coins_needed = (SELECT MIN(coins_needed)
                                                 FROM Wands as W2
                                                 INNER JOIN Wands_Property AS WP2 ON W2.code = WP2.code
                                                 WHERE W2.power = W.power AND WP2.age = WP.age)
ORDER BY W.Power DESC, WP.age DESC;
