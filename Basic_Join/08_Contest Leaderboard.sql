SELECT H.hacker_id, H.name, SUM(Max_Score.t1) as total_score
FROM Hackers AS H 
INNER JOIN (
    SELECT MAX(S.score) as t1, S.hacker_id  
    FROM Submissions S
    GROUP BY S.challenge_id, S.hacker_id
    HAVING t1 > 0
) AS MAX_SCORE ON H.hacker_id = Max_Score.hacker_id
GROUP BY H.hacker_id, H.name
ORDER BY total_score DESC, hacker_id ASC;
