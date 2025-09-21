use chinook;
select 
    DATE_FORMAT(inv.InvoiceDate, '%Y-%m') as Datee,
    sum(inv.Total) as total
 from invoice inv
group by Datee
order by total desc
