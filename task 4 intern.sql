CREATE TABLE sales (
    id INT PRIMARY KEY,
    product VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT
);
 select * from sales;

 INSERT INTO sales (id, product, price, quantity) VALUES
(1, 'Apple', 10.00, 3),
(2, 'Banana', 5.00, 7),
(3, 'Orange', 8.00, 2),
(4, 'Mango', 12.00, 5),
(5, 'Pineapple', 15.00, 1);

SELECT 
  -- Aggregates on 'price'
  SUM(price) AS total_price,
  AVG(price) AS avg_price,
  MIN(price) AS min_price,
  MAX(price) AS max_price,
  COUNT(price) AS count_price,

  -- Aggregates on 'quantity'
  SUM(quantity) AS total_quantity,
  AVG(quantity) AS avg_quantity,
  MIN(quantity) AS min_quantity,
  MAX(quantity) AS max_quantity,
  COUNT(quantity) AS count_quantity

FROM sales;

---using group by and having  
SELECT 
  product,
  SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
HAVING SUM(quantity) < 3;


