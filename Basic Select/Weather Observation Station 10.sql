SELECT DISTINCT City 
FROM Station
WHERE (City NOT LIKE '%a'
       AND City NOT LIKE '%e'
       AND City NOT LIKE '%i'
       AND City NOT LIKE '%o'
       AND City NOT LIKE '%u'
      );
