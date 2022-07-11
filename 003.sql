-- Create
create table customers(customer_id INT Not Null Auto_increment, 
Name varchar(30), Email varchar(60) Not Null Default 'Email Not Provided', Amount INT, Primary Key(customer_id));
DESC customers;
Insert into customers(Name, Email, Amount) 
Values('Mohit', 'Mohit.sharma3105@yahoo.com', 2500), 
('Avni', 'Avni.31', 10000000),
('Hitesh', 'Hitesh@Email.com', 35),
('Mohit', 'Ms.31ms05@gmail.com', 3105),
('Lina', 'Lina@email.com', 88), 
('Muskan', 'Malviya.muskan19@gmail.com', 28)

-- Read
Select * from Customers

-- Update12:25:51	Update Customers Set Email = 'Mohit.sharma3105445@gmail.com' Where Name= 'Mohit'	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.063 sec

-- Change Avni's Email to Avni.31@gmail.com
Select * from customers where name='Avni'
Update customers SET Email = 'Avni.31@gmail.com' Where Customer_id = 2;
-- Lina purchase from 35 to 38
Select * from customers where name='Lina'
Update customers SET Amount = 38 Where Customer_id = 5;

Select * From customers Where name = 'Mohit'
Update Customers Set Email = 'Mohit.sharma3105445@gmail.com' Where (Name= 'Mohit' And Customer_id <> 0);
Select * From customers Where name = 'Mohit';

-- Delete 
-- Delete Lina's Data 
delete from Customers where (name = 'Lina' And Customer_id <> 0);

Select * from Customers;



-- 