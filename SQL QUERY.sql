

CREATE TABLE customer_feedback1 (
    Response_ID VARCHAR(10) PRIMARY KEY,
    Business_ID VARCHAR(10),
    Business_Category VARCHAR(50),
    Area VARCHAR(50),
    Service_Quality INT,
    Waiting_Time_Rating INT,
    Product_Availability INT,
    Price_Perception INT,
    Staff_Behaviour INT,
    Overall_Satisfaction INT,
    Improvement_Area VARCHAR(50),
    Visit_Frequency VARCHAR(20)
);

INSERT INTO customer_feedback1 (
    Response_ID,
    Business_ID,
    Business_Category,
    Area,
    Service_Quality,
    Waiting_Time_Rating,
    Product_Availability,
    Price_Perception,
    Staff_Behaviour,
    Overall_Satisfaction,
    Improvement_Area,
    Visit_Frequency
)
VALUES
('R001','B001','Grocery','Rajarampuri',4,4,5,3,4,4,'Price','Weekly'),
('R002','B001','Grocery','Shahupuri',5,4,5,4,5,5,'Price','Weekly'),
('R003','B001','Grocery','Laxmipuri',3,2,4,3,3,3,'Waiting Time','Monthly'),
('R004','B001','Grocery','Shivaji Peth',4,2,5,3,4,3,'Waiting Time','Weekly'),
('R005','B001','Grocery','Tarabai Park',5,5,5,4,5,5,'Price','Daily'),
('R006','B001','Grocery','Nagalapark',4,3,4,3,4,4,'Price','Weekly'),
('R007','B001','Grocery','Rankala',2,2,3,2,3,2,'Price','Monthly'),
('R008','B001','Grocery','Ujalaiwadi',4,4,5,4,4,4,'Product Availability','Weekly'),
('R009','B001','Grocery','Kasaba Bawada',5,5,5,4,5,5,'Product Availability','Daily'),
('R010','B001','Grocery','Kalamba',3,2,4,3,3,3,'Waiting Time','Monthly'),

('R011','B002','Clothing','Rajarampuri',4,3,4,3,4,4,'Price','Monthly'),
('R012','B002','Clothing','Shahupuri',3,2,4,2,3,3,'Price','Monthly'),
('R013','B002','Clothing','Laxmipuri',5,4,5,4,5,5,'Price','Weekly'),
('R014','B002','Clothing','Shivaji Peth',4,3,4,3,4,4,'Product Availability','Monthly'),
('R015','B002','Clothing','Tarabai Park',2,2,3,2,3,2,'Price','Monthly'),
('R016','B002','Clothing','Nagalapark',4,4,5,3,5,4,'Price','Weekly'),
('R017','B002','Clothing','Rankala',5,4,5,4,5,5,'Product Availability','Weekly'),
('R018','B002','Clothing','Ujalaiwadi',3,2,3,3,3,3,'Waiting Time','Monthly'),
('R019','B002','Clothing','Kasaba Bawada',4,3,4,3,4,4,'Price','Weekly'),
('R020','B002','Clothing','Kalamba',3,2,4,2,3,2,'Price','Monthly'),

('R021','B003','Bakery','Rajarampuri',5,4,5,4,5,5,'Product Availability','Daily'),
('R022','B003','Bakery','Shahupuri',4,3,5,4,4,4,'Price','Weekly'),
('R023','B003','Bakery','Laxmipuri',5,3,5,4,5,5,'Waiting Time','Daily'),
('R024','B003','Bakery','Shivaji Peth',4,2,4,3,4,3,'Waiting Time','Weekly'),
('R025','B003','Bakery','Tarabai Park',5,4,5,4,5,5,'Price','Daily'),
('R026','B003','Bakery','Nagalapark',4,3,4,3,4,4,'Price','Weekly'),
('R027','B003','Bakery','Rankala',3,2,4,3,3,3,'Waiting Time','Monthly'),
('R028','B003','Bakery','Ujalaiwadi',5,5,5,4,5,5,'Price','Daily'),
('R029','B003','Bakery','Kasaba Bawada',4,4,5,4,4,4,'Product Availability','Weekly'),
('R030','B003','Bakery','Kalamba',3,2,4,3,3,3,'Waiting Time','Monthly'),

('R031','B004','Electronics','Rajarampuri',4,3,4,3,4,4,'Price','Monthly'),
('R032','B004','Electronics','Shahupuri',2,2,3,2,3,2,'Price','Monthly'),
('R033','B004','Electronics','Laxmipuri',4,3,5,3,4,4,'Price','Weekly'),
('R034','B004','Electronics','Shivaji Peth',5,4,5,4,5,5,'Service Quality','Weekly'),
('R035','B004','Electronics','Tarabai Park',3,2,3,2,3,2,'Price','Monthly'),
('R036','B004','Electronics','Nagalapark',4,3,4,3,4,4,'Product Availability','Weekly'),
('R037','B004','Electronics','Rankala',3,2,4,2,3,3,'Price','Monthly'),
('R038','B004','Electronics','Ujalaiwadi',5,4,5,4,5,5,'Service Quality','Weekly'),
('R039','B004','Electronics','Kasaba Bawada',4,3,4,3,4,4,'Price','Monthly'),
('R040','B004','Electronics','Kalamba',3,1,3,2,3,2,'Waiting Time','Monthly'),

('R041','B005','Pharmacy','Rajarampuri',5,4,5,4,5,5,'Waiting Time','Weekly'),
('R042','B005','Pharmacy','Shahupuri',4,3,5,4,4,4,'Price','Weekly'),
('R043','B005','Pharmacy','Laxmipuri',5,5,5,4,5,5,'Waiting Time','Daily'),
('R044','B005','Pharmacy','Shivaji Peth',4,3,4,3,4,4,'Price','Weekly'),
('R045','B005','Pharmacy','Tarabai Park',5,4,5,4,5,5,'Product Availability','Weekly'),
('R046','B005','Pharmacy','Nagalapark',3,2,4,3,3,3,'Waiting Time','Monthly'),
('R047','B005','Pharmacy','Rankala',4,3,5,4,4,4,'Price','Weekly'),
('R048','B005','Pharmacy','Ujalaiwadi',5,4,5,4,5,5,'Waiting Time','Daily'),
('R049','B005','Pharmacy','Kasaba Bawada',4,2,4,3,4,3,'Waiting Time','Monthly'),
('R050','B005','Pharmacy','Kalamba',5,5,5,4,5,5,'Price','Daily'),

('R051','B001','Grocery','Rajarampuri',3,3,4,3,4,3,'Price','Weekly'),
('R052','B001','Grocery','Shahupuri',5,4,5,4,5,5,'Product Availability','Daily'),
('R053','B001','Grocery','Laxmipuri',3,2,4,2,3,3,'Waiting Time','Monthly'),
('R054','B001','Grocery','Shivaji Peth',4,2,5,3,4,3,'Waiting Time','Weekly'),
('R055','B001','Grocery','Tarabai Park',5,5,5,4,5,5,'Price','Daily'),
('R056','B001','Grocery','Nagalapark',4,3,4,3,4,4,'Price','Weekly'),
('R057','B001','Grocery','Rankala',2,2,3,2,3,2,'Price','Monthly'),
('R058','B001','Grocery','Ujalaiwadi',4,4,5,4,4,4,'Product Availability','Weekly'),
('R059','B001','Grocery','Kasaba Bawada',5,4,5,4,5,5,'Service Quality','Daily'),
('R060','B001','Grocery','Kalamba',3,2,4,3,3,3,'Waiting Time','Monthly'),

('R061','B002','Clothing','Rajarampuri',4,3,4,3,4,4,'Price','Weekly'),
('R062','B002','Clothing','Shahupuri',3,2,4,2,3,3,'Price','Monthly'),
('R063','B002','Clothing','Laxmipuri',5,4,5,4,5,5,'Price','Weekly'),
('R064','B002','Clothing','Shivaji Peth',4,3,5,3,4,4,'Product Availability','Monthly'),
('R065','B002','Clothing','Tarabai Park',2,2,3,2,3,2,'Price','Monthly'),
('R066','B002','Clothing','Nagalapark',4,4,5,3,5,4,'Service Quality','Weekly'),
('R067','B002','Clothing','Rankala',5,4,5,4,5,5,'Product Availability','Weekly'),
('R068','B002','Clothing','Ujalaiwadi',3,2,3,3,3,3,'Waiting Time','Monthly'),
('R069','B002','Clothing','Kasaba Bawada',4,3,4,3,4,4,'Price','Weekly'),
('R070','B002','Clothing','Kalamba',3,2,4,2,3,2,'Price','Monthly'),

('R071','B003','Bakery','Rajarampuri',5,4,5,4,5,5,'Product Availability','Daily'),
('R072','B003','Bakery','Shahupuri',4,3,5,4,4,4,'Price','Weekly'),
('R073','B003','Bakery','Laxmipuri',5,3,5,4,5,5,'Waiting Time','Daily'),
('R074','B003','Bakery','Shivaji Peth',4,2,4,3,4,3,'Waiting Time','Weekly'),
('R075','B003','Bakery','Tarabai Park',5,4,5,4,5,5,'Price','Daily'),
('R076','B003','Bakery','Nagalapark',4,3,4,3,4,4,'Price','Weekly'),
('R077','B003','Bakery','Rankala',3,2,4,3,3,3,'Waiting Time','Monthly'),
('R078','B003','Bakery','Ujalaiwadi',5,5,5,4,5,5,'Price','Daily'),
('R079','B003','Bakery','Kasaba Bawada',4,3,5,4,4,4,'Product Availability','Weekly'),
('R080','B003','Bakery','Kalamba',3,2,4,3,3,3,'Waiting Time','Monthly'),

('R081','B004','Electronics','Rajarampuri',4,3,4,3,4,4,'Price','Monthly'),
('R082','B004','Electronics','Shahupuri',3,2,3,2,3,2,'Price','Monthly'),
('R083','B004','Electronics','Laxmipuri',4,3,5,3,4,4,'Product Availability','Weekly'),
('R084','B004','Electronics','Shivaji Peth',5,4,5,4,5,5,'Service Quality','Weekly'),
('R085','B004','Electronics','Tarabai Park',2,2,3,2,3,2,'Price','Monthly'),
('R086','B004','Electronics','Nagalapark',4,3,4,3,4,4,'Product Availability','Weekly'),
('R087','B004','Electronics','Rankala',3,2,4,2,3,3,'Price','Monthly'),
('R088','B004','Electronics','Ujalaiwadi',5,4,5,4,5,5,'Service Quality','Weekly'),
('R089','B004','Electronics','Kasaba Bawada',4,3,4,3,4,4,'Price','Monthly'),
('R090','B004','Electronics','Kalamba',3,1,3,2,3,2,'Waiting Time','Monthly'),

('R091','B005','Pharmacy','Rajarampuri',5,4,5,4,5,5,'Waiting Time','Weekly'),
('R092','B005','Pharmacy','Shahupuri',4,3,5,4,4,4,'Price','Weekly'),
('R093','B005','Pharmacy','Laxmipuri',5,5,5,4,5,5,'Waiting Time','Daily'),
('R094','B005','Pharmacy','Shivaji Peth',4,3,4,3,4,4,'Price','Weekly'),
('R095','B005','Pharmacy','Tarabai Park',5,4,5,4,5,5,'Product Availability','Weekly'),
('R096','B005','Pharmacy','Nagalapark',3,2,4,3,3,3,'Waiting Time','Monthly'),
('R097','B005','Pharmacy','Rankala',4,3,5,4,4,4,'Price','Weekly'),
('R098','B005','Pharmacy','Ujalaiwadi',5,4,5,4,5,5,'Waiting Time','Daily'),
('R099','B005','Pharmacy','Kasaba Bawada',4,2,4,3,4,3,'Waiting Time','Monthly'),
('R100','B005','Pharmacy','Kalamba',5,5,5,4,5,5,'Price','Daily');

SELECT * FROM customer_feedback1;

SELECT COUNT(*) AS Total_Records
FROM customer_feedback1;

SELECT *
FROM customer_feedback1
LIMIT 10;

SELECT 
    Business_ID,
    Business_Category,
    COUNT(*) AS Total_Responses
FROM customer_feedback1
GROUP BY Business_ID, Business_Category
ORDER BY Total_Responses DESC;

SELECT
    Business_Category,
    ROUND(AVG(Overall_Satisfaction), 2) AS Avg_Satisfaction
FROM customer_feedback1
GROUP BY Business_Category
ORDER BY Avg_Satisfaction DESC;

SELECT
    ROUND(AVG(Service_Quality), 2) AS Avg_Service_Quality,
    ROUND(AVG(Waiting_Time_Rating), 2) AS Avg_Waiting_Time,
    ROUND(AVG(Product_Availability), 2) AS Avg_Product_Availability,
    ROUND(AVG(Price_Perception), 2) AS Avg_Price_Perception,
    ROUND(AVG(Staff_Behaviour), 2) AS Avg_Staff_Behaviour,
    ROUND(AVG(Overall_Satisfaction), 2) AS Avg_Overall_Satisfaction
FROM customer_feedback1;

SELECT
    COUNT(*) AS Dissatisfied_Customers
FROM customer_feedback1
WHERE Overall_Satisfaction <= 2;

SELECT
    Business_Category,
    COUNT(*) AS Dissatisfied_Customers
FROM customer_feedback1
WHERE Overall_Satisfaction <= 2
GROUP BY Business_Category
ORDER BY Dissatisfied_Customers DESC;

SELECT
    Improvement_Area,
    COUNT(*) AS Request_Count
FROM customer_feedback1
GROUP BY Improvement_Area
ORDER BY Request_Count DESC;

SELECT
    Business_Category,
    Improvement_Area,
    COUNT(*) AS Request_Count
FROM customer_feedback1
GROUP BY Business_Category, Improvement_Area
ORDER BY Business_Category, Request_Count DESC;

SELECT
    Waiting_Time_Rating,
    ROUND(AVG(Overall_Satisfaction), 2) AS Avg_Satisfaction,
    COUNT(*) AS Responses
FROM customer_feedback1
GROUP BY Waiting_Time_Rating
ORDER BY Waiting_Time_Rating;

SELECT
    Visit_Frequency,
    COUNT(*) AS Customers,
    ROUND(AVG(Overall_Satisfaction), 2) AS Avg_Satisfaction
FROM customer_feedback1
GROUP BY Visit_Frequency
ORDER BY Avg_Satisfaction DESC;

SELECT
    Business_Category,
    COUNT(*) AS Highly_Satisfied
FROM customer_feedback1
WHERE Overall_Satisfaction >= 4
GROUP BY Business_Category
ORDER BY Highly_Satisfied DESC;

SELECT
    Business_ID,
    Business_Category,
    COUNT(*) AS Responses,
    ROUND(AVG(Service_Quality), 2) AS Service_Score,
    ROUND(AVG(Waiting_Time_Rating), 2) AS Waiting_Score,
    ROUND(AVG(Product_Availability), 2) AS Availability_Score,
    ROUND(AVG(Price_Perception), 2) AS Price_Score,
    ROUND(AVG(Staff_Behaviour), 2) AS Staff_Score,
    ROUND(AVG(Overall_Satisfaction), 2) AS Satisfaction_Score
FROM customer_feedback1
GROUP BY Business_ID, Business_Category
ORDER BY Satisfaction_Score DESC;
SELECT COUNT(*) AS Total_Records
FROM customer_feedback1;

SELECT
    ROUND(AVG(Service_Quality), 2) AS Avg_Service_Quality,
    ROUND(AVG(Waiting_Time_Rating), 2) AS Avg_Waiting_Time,
    ROUND(AVG(Product_Availability), 2) AS Avg_Product_Availability,
    ROUND(AVG(Price_Perception), 2) AS Avg_Price_Perception,
    ROUND(AVG(Staff_Behaviour), 2) AS Avg_Staff_Behaviour,
    ROUND(AVG(Overall_Satisfaction), 2) AS Avg_Overall_Satisfaction
FROM customer_feedback1;

SELECT
    Business_Category,
    COUNT(*) AS Total_Responses,
    ROUND(AVG(Overall_Satisfaction), 2) AS Avg_Satisfaction
FROM customer_feedback1
GROUP BY Business_Category
ORDER BY Avg_Satisfaction DESC;

SELECT
    Improvement_Area,
    COUNT(*) AS Request_Count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_feedback1),
        2
    ) AS Percentage
FROM customer_feedback1
GROUP BY Improvement_Area
ORDER BY Request_Count DESC;

SELECT
    Waiting_Time_Rating,
    ROUND(AVG(Overall_Satisfaction), 2) AS Avg_Satisfaction,
    COUNT(*) AS Responses
FROM customer_feedback1
GROUP BY Waiting_Time_Rating
ORDER BY Waiting_Time_Rating;

SELECT
    COUNT(*) AS Dissatisfied_Customers,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_feedback1),
        2
    ) AS Dissatisfaction_Percentage
FROM customer_feedback1
WHERE Overall_Satisfaction <= 2;

SELECT COUNT(*) AS Total_Records
FROM customer_feedback1;
