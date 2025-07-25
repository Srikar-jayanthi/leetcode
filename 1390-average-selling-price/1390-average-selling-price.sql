/* Write your PL/SQL query statement below */
SELECT 
    p.product_id,
    ROUND(
        NVL(SUM(price * units) / NULLIF(SUM(units), 0), 0), 
        2
    ) AS average_price
FROM 
    Prices p
LEFT JOIN 
    UnitsSold u
ON 
    p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    p.product_id;
