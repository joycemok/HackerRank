SELECT DISTINCT City
FROM STATION
WHERE (City NOT LIKE '[AEIOU]%[aeiou]'
       AND City NOT LIKE '[AEIOU]%'
       AND City NOT LIKE '%[aeiou]'
      );
