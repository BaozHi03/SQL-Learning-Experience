SELECT  product_id
       ,product_name
       ,sale_price
       ,MAX(sale_price) OVER (ORDER BY product_id) AS Current_max_price
  FROM product;
  
SELECT  product_id
       ,product_name
       ,sale_price
       ,regist_date
       ,sum(sale_price) OVER (ORDER BY regist_date) AS sum_price
  from product;
  
#PARTITION BY 能够设定窗口对象范围

