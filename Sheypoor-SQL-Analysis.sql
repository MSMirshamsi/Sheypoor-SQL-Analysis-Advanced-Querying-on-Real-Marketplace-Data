-- Section1
    SELECT c.Name
    FROM advertisements AS a
             JOIN categories c ON c.ID = a.IDCategory
    WHERE c.IDParent IS NULL
    GROUP BY c.Name
    ORDER BY COUNT(*) DESC
    LIMIT 1;
-- Section2
    SELECT c.NameIDCategory = c.ID
    WHERE c.IDParent IS NOT NULL
      AND DATE_FORMAT(a.DateAdded, '%Y-%m'
    FROM advertisements a
             JOIN categories c ON a.) = '2016-02'
    GROUP BY c.Name
    ORDER BY COUNT(DISTINCT a.IDUser) DESC
    LIMIT 1;
-- Section3
    SELECT COUNT(*) AS Advertisers
    FROM (SELECT a.IDUser
          FROM advertisements a
          GROUP BY a.IDUser
          HAVING COUNT(DISTINCT a.IDCategory) = 1) T;
-- Section4
    SELECT IDUser
    FROM (SELECT IDUser,
                 DateAdded,
                 COUNT(*) OVER (PARTITION BY IDUser
                     ORDER BY DateAdded
                     RANGE BETWEEN INTERVAL 30 DAY PRECEDING AND CURRENT ROW) AS NumListings
          FROM advertisements) AS TempTable
    GROUP BY IDUser
    ORDER BY MAX(NumListings) DESC
    LIMIT 1;
-- Section5
    SELECT IDUser
    FROM (SELECT a.IDUser, a.DateAdded, a.Price,
                COUNT(*) OVER (PARTITION BY a.IDUser
                    ORDER BY a.DateAdded
                    RANGE BETWEEN INTERVAL 30 DAY PRECEDING AND CURRENT ROW) AS ListingsInLast30Days
            FROM advertisements a
            JOIN categories c ON a.IDCategory = c.ID
            WHERE c.Name LIKE '%Estate%') AS TempTable
    GROUP BY IDUser
    ORDER BY MAX(ListingsInLast30Days) DESC, MAX(Price) DESC
    LIMIT 1;
-- Section6
    WITH car_prices AS (
    SELECT a.Price,
           a.DateAdded,
           c.Name,
           MAX(a.Price) OVER (PARTITION BY c.Name ORDER BY a.DateAdded RANGE BETWEEN CURRENT ROW AND INTERVAL '1' YEAR FOLLOWING) AS OneYearLaterMax,
           MIN(a.Price) OVER (PARTITION BY c.Name ORDER BY a.DateAdded RANGE BETWEEN CURRENT ROW AND INTERVAL '1' YEAR FOLLOWING) AS OneYearLaterMin
    FROM advertisements a
    JOIN categories c ON a.IDCategory = c.ID
    WHERE c.Name LIKE '%car%'
)
    SELECT Name,
           OneYearLaterMax - OneYearLaterMin AS PriceIncrease
    FROM car_prices
    GROUP BY Name, OneYearLaterMax, OneYearLaterMin
    ORDER BY PriceIncrease DESC
    LIMIT 1;
