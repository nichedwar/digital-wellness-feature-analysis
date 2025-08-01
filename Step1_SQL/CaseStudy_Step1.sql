-- Creating and use database
CREATE DATABASE IF NOT EXISTS digitalwell;
USE digitalwell;

-- Creating table_1 (i.e., "Table1") from the case study Word document
CREATE TABLE IF NOT EXISTS table_1 (
  id INT,
  mobile VARCHAR(255),
  first_weight INT
);

-- Inserting values for table_1 based on Word document
INSERT INTO table_1 (id, mobile, first_weight)
VALUES 
(1, "Yes", 180),
(2, "Yes", 290),
(3, "No", 220),
(4, "No", 235),
(5, "Yes", 195);

-- Creating table_2 (i.e., "Table2") from the case study Word document
CREATE TABLE IF NOT EXISTS table_2 (
  id INT,
  new_feature INT,
  weight_loss DECIMAL(20,10)
);

-- Inserting values for table_2 based on Word document
INSERT INTO table_2 (id, new_feature, weight_loss)
VALUES 
(1, 0, 10),
(2, 0, 8),
(3, 1, 7.5),
(4, 1, 9.3),
(5, 0, 6.9);

-- Combines table_1 and table_2 together and then averages weight loss by mobile for the group
SELECT 
    t1.mobile,
    AVG(t2.weight_loss) as avg_wl
FROM table_1 as t1
JOIN table_2 as t2 ON t1.id = t2.id
GROUP BY t1.mobile
