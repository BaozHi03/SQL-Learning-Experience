DROP VIEW ViewPractice5_1;
CREATE VIEW ViewPractice5_1(product_name,sale_price,regist_date)
as
select product_name,sale_price,regist_date
from product
where sale_price>=1000
and regist_date='2009-09-20';

INSERT INTO ViewPractice5_1 VALUES (' 刀子 ', 300, '2009-11-02');

select product_id,product_name,product_type,sale_price,(SELECT AVG(sale_price)FROM product) AS avg_price
from product;

CREATE VIEW AvgPriceByType(product_id,product_name,product_type,sale_price,avg_price)
AS
select product_id,product_name,product_type,sale_price,(SELECT AVG(sale_price) FROM product as p2 where p1.product_type =p2.product_type GROUP BY product_type) AS avg_price
from product as p1;

#不会

SELECT product_name, purchase_price
  FROM product
 WHERE purchase_price NOT IN (500, 2800, 5000);
 
 SELECT product_name, purchase_price
  FROM product
 WHERE purchase_price NOT IN (500, 2800, 5000, NULL);
 
SELECT SUM(CASE WHEN sale_price<=1000  THEN 1 ELSE 0 END) AS low_price,
       SUM(CASE WHEN sale_price between 1001 and 3000  THEN 1 ELSE 0 END) AS  mid_price,
       SUM(CASE WHEN sale_price>=3001  THEN 1 ELSE 0 END) AS high_price
  FROM product;