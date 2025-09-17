SELECT 
    f.CustomerId,
    f.FirstName,
    f.LastName,
    f.Address,
    MAX(c.BillingAddress) AS BillingAddress,
    MAX(c.Total) AS Total
FROM customer f
LEFT JOIN invoice c ON f.CustomerId = c.CustomerId
GROUP BY f.CustomerId, f.FirstName, f.LastName, f.Address
order by total desc

/* top 5 
1.Helena Holy - 25.86
2.Richard Cunningham - 23.86
3. Ladislav Kovācs - 21.86
3. Hugh Oŗeilly - 21.86
4. Victor Stevens- 18.86
5. Astrid Gruber- 18.86
