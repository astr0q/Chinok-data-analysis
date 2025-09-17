SELECT 
    f.CustomerId,
    f.FirstName,
    f.LastName,
    f.Address,
    SUM(c.Total) AS TotalPurchases
FROM customer f
LEFT JOIN invoice c ON f.CustomerId = c.CustomerId
GROUP BY f.CustomerId, f.FirstName, f.LastName, f.Address
ORDER BY TotalPurchases DESC
LIMIT 5;


/* top 5 
1.Helena Holy - 25.86
2.Richard Cunningham - 23.86
3. Ladislav Kovācs - 21.86
3. Hugh Oŗeilly - 21.86
4. Victor Stevens- 18.86
5. Astrid Gruber- 18.86
