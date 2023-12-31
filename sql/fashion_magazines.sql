SELECT customers.customer_name AS Customer,
   PRINTF("$%.2f", SUM(subscriptions.price_per_month * subscriptions.subscription_length )) AS "Amount Due"

From orders
INNER JOIN customers  
        ON customers.customer_id = orders.customer_id

INNER JOIN subscriptions
        ON subscriptions.subscription_id = orders.subscription_id 

WHERE subscriptions.description = "Fashion Magazine"
  AND orders.order_status = "unpaid"

GROUP BY customers.customer_name;