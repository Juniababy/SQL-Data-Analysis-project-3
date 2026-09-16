SELECT * 
FROM e_commerce_data 
LIMIT 10;
SELECT DISTINCT Product 
FROM e_commerce_data;
SELECT DISTINCT PaymentMethod 
FROM e_commerce_data;
SELECT ï»¿OrderID, Date, CustomerID, Product, TotalPrice 
FROM e_commerce_data
WHERE OrderStatus = 'Delivered'
ORDER BY Date DESC;
SELECT 
    COUNT(ï»¿OrderID) AS total_orders,
    SUM(Quantity) AS total_items_sold,
    SUM(TotalPrice) AS total_revenue,
    AVG(TotalPrice) AS average_order_value,
    COUNT(CouponCode) AS orders_with_coupons
FROM e_commerce_data;
SELECT 
    Product,
    COUNT(ï»¿OrderID) AS total_orders,
    SUM(Quantity) AS total_units_sold,
    SUM(TotalPrice) AS total_revenue,
    AVG(UnitPrice) AS avg_unit_price
FROM e_commerce_data
GROUP BY Product
ORDER BY total_revenue DESC;
SELECT 
    ReferralSource,
    COUNT(ï»¿OrderID) AS total_orders,
    SUM(TotalPrice) AS total_revenue
FROM e_commerce_data
GROUP BY ReferralSource
HAVING SUM(TotalPrice) > 200000
ORDER BY total_revenue DESC;
SELECT 
    OrderStatus,
    COUNT(ï»¿OrderID) AS order_count,
    SUM(TotalPrice) AS total_status_value
FROM e_commerce_data
GROUP BY OrderStatus
ORDER BY order_count DESC;