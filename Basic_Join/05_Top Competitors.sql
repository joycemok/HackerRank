SELECT Hackers.hacker_id, Hackers.name 
FROM Hackers
INNER JOIN Submissions ON Hackers.hacker_id = Submissions.hacker_id
INNER JOIN Challenges ON Submissions.challenge_id = Challenges.challenge_id
INNER JOIN Difficulty ON Challenges.difficulty_level = Difficulty.difficulty_level
WHERE Submissions.score = Difficulty.score
GROUP BY Hackers.hacker_id, Hackers.name
HAVING COUNT(Hackers.hacker_id) > 1
ORDER BY COUNT(Hackers.hacker_id) DESC, Hackers.hacker_id ASC;
