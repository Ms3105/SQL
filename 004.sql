-- Create
create table user(customer_id INT Not Null Auto_increment, 
fName varchar(30),lname varchar(50), Email varchar(60) Not Null Default 'Email Not Provided', Amount INT, Mnth Int, Primary Key(customer_id));
Insert into user(fName,lname, Email, Amount, mnth) 
Values('Mohit','sharma', 'Mohit.sharma3105@yahoo.com', 2500, 8 ), 
('Avni','sharma', 'Avni.31', 10000000, 5),
('Hitesh','nipata', 'Hitesh@Email.com', 35,6),
('Mohit','sharma', 'Ms.31ms05@gmail.com', 3105, 5),
('Lina','don', 'Lina@email.com', 88, 2), 
('Muskan','Malviya', 'Malviya.muskan19@gmail.com', 28,8)
-- Q.1 Full Name of all the user start by A or M
Select distinct(concat(fName,' ', lname)) as 'Full Name' 
from user where fName Like 'A%' or fName Like 'M%' order by fName;

-- Q.2 Arrange all user based on Amount Increasing and decreasing 
Select * from user order by Amount Asc;
Select * from user order by Amount DESC;
-- Second Rank Amount
Select * from user order by Amount DESC limit 2,1;

-- Q.3 Change fname 'A' to @
select replace(fName, 'a', '@') from User;

-- substring index start from  1
select substring(fname, 1,4) from user;

-- Q.4 Show only 6 Letter of email then use ...later
select fName ,concat(substring(Email, 1, 9), '...') as Email from user;
-- Q.5 Give me length of Email.
select Email, char_length(Email) from user;



