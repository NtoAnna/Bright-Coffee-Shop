select * from brightcoffees_shop
limit 10;

select min(transaction_time)
from BRIGHTCOFFEES_SHOP;

select max(transaction_time)
from brightcoffees_shop;

select store_id
       store_location,
case 
when transaction_time between '06:00:00' AND '11:59:00' THEN 'Morning'
when transaction_time between '12:00:00' AND '16:59:00' THEN 'Afternoon'
when transaction_time between '17:00:00' AND '19:59:00' THEN 'Evening'
ELSE 'Night'
END AS time_buckets
from brightcoffees_shop;

select 
      product_detail,
sum(transaction_qty) as total_quantity_sold,
sum(transaction_qty) as total_sales
from brightcoffees_shop
group by product_detail
order by total_sales desc
limit 10;

select count(distinct transaction_id ) as number_of_sales,
       count(distinct product_id) as unique_products_sold,
       sum(transaction_qty * TO_NUMBER(replace(unit_price,',','.')))as total_amount,
       product_category,
       product_type,
       store_location
from brightcoffees_shop
group by all;

select count(transaction_id)as number_of_sales
        count(distinct product id)
       store_location,
case 
when transaction_time between '06:00:00' AND '11:59:00' THEN 'Morning'
when transaction_time between '12:00:00' AND '16:59:00' THEN 'Afternoon'
when transaction_time between '17:00:00' AND '19:59:00' THEN 'Evening'
ELSE 'Night'
END AS time_buckets
from brightcoffees_shop;


 
      



       
     