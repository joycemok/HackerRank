SELECT DISTINCT City 
FROM STATION
WHERE (City LIKE '%a'
       OR City LIKE '%e'
       OR City LIKE '%i'
       OR City LIKE '%o'
       OR City LIKE '%u'
      );
