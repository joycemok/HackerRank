SELECT H.hacker_id, H.name, COUNT(C.challenge_id) AS Challenge_Count
FROM Hackers AS H
LEFT JOIN Challenges AS C ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
HAVING Challenge_Count = (
    SELECT COUNT(C2.challenge_id) AS Challenge_MAX
    FROM Challenges AS C2
    GROUP BY C2.hacker_id
    ORDER BY Challenge_MAX DESC 
    LIMIT 1
)
OR Challenge_COUNT IN 
    (SELECT DISTINCT C_COMPARE AS C_UNIQUE
     FROM (SELECT H2.HACKER_ID, 
                  H2.NAME, 
                  COUNT(CHALLENGE_ID) AS C_COMPARE
           FROM HACKERS H2
           JOIN CHALLENGES C ON C.HACKER_ID = H2.HACKER_ID
           GROUP BY H2.HACKER_ID, H2.NAME) COUNTS
     GROUP BY C_COMPARE
     HAVING COUNT(C_COMPARE) = 1)

ORDER BY COUNT(C.challenge_id) DESC, hacker_id ASC;
