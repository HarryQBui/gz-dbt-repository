
SELECT 
    date_date
    , COUNT(orders_id) AS nb_transactions
    , ROUND(SUM(revenue),2) as revenue
    , ROUND(SUM(revenue)/COUNT(orders_id),2) AS average_basket
    , ROUND(SUM(margin),2) as margin
    , ROUND(SUM(operational_margin),2) as operational_margin
    , ROUND(SUM(purchase_cost),2) as purchase_cost
    , ROUND(SUM(shipping_fee),2) as shipping_fee
    , ROUND(SUM(logcost),2) as logcost
    , ROUND(SUM(ship_cost),2) as ship_cost
    , SUM(quantity) as quantity
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC