SELECT DISTINCT City 
FROM Station
WHERE (City NOT LIKE 'A%'
       AND City NOT LIKE 'E%'
       AND City NOT LIKE 'I%'
       AND City NOT LIKE 'O%'
       AND City NOT LIKE 'U%'
      );
