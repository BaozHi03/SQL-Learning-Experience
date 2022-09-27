select *
from product
where sale_price>500
union
select *
from product2
where sale_price>500;

SELECT * 
  FROM Product
 WHERE product_id NOT IN (SELECT product_id 
							FROM Product
						   WHERE product_id NOT IN (SELECT product_id FROM Product2)
						  UNION
						  SELECT product_id 
							FROM Product2
						   WHERE product_id NOT IN (SELECT product_id FROM Product));
                           
SELECT SP.shop_id
      ,MAX(P.sale_price) AS max_price
      ,SP.shop_name
  FROM shopproduct AS SP
 INNER JOIN product AS P
    ON SP.product_id = P.product_id
 GROUP BY SP.shop_id
 
 