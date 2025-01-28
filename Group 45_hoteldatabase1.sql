create database HOTELDATABASE1;
use HOTELDATABASE1;

create table STAFF (
	StaffID varchar(10) not null,
    S_Name varchar(30) not null,
    Position varchar(25) not null,
    Salary varchar(15) not null,
    HireDate date not null,
    primary key (StaffID)
);




insert into STAFF values ('SF001','Sahan Dissanayake', 'Manager','Rs.300000','2024-01-01' );
insert into STAFF values ('SF002','Nimsara Paramulla', 'Director of Purchasing','Rs.210000','2024-01-01' );
insert into STAFF values ('SF003','Chethana Wanniarachchi', 'Director of marketing','Rs.210000','2024-01-01' );
insert into STAFF values ('SF004','Aima Abeer', 'Front Office Manager','Rs.200000','2024-01-02' );
insert into STAFF values ('SF005','Kapila Addaraarachchi', 'Human Resources Manager','Rs.150000','2024-01-02' );
insert into STAFF values ('SF009','Sithum Sankalpa','Cook' ,'Rs.140000','2024-01-08' );
insert into STAFF values ('SF006','Shiva Suryakumar', 'Hotel Receptionist','Rs.90000','2024-01-04' );
insert into STAFF values ('SF007','Sandeepa Thennakon', 'Parking Attendant','Rs.70000','2024-01-05' );
insert into STAFF values ('SF008','Thushalika Kumar', 'Room Attendant','Rs.70000','2024-01-07' );
insert into STAFF values ('SF0010','Noora Arij','Hotel Housekeeper' ,'Rs.300000','2024-01-08' );

SELECT * FROM hoteldatabase1.staff;

-- Updating data in STAFF table
UPDATE STAFF
SET S_Name = 'Amima Abishan', Position='Office Manager'
WHERE StaffID ='SF004';

UPDATE STAFF
SET S_Name = 'Sandeepa Hettigoda', Salary='Rs.80000'
WHERE StaffID ='SF007';

-- Deleting one row from the STAFF table
DELETE FROM STAFF
WHERE StaffID = 'SF002';



create table GUEST (
GuestID varchar(10) not null,
FirstName varchar(15) not null,
LastName varchar(15) not null,
DateOfBirth date ,
Age int,
Email varchar(40),
Street varchar(20),
City varchar(20),
Province varchar(20),
GuestPassword varchar(10),
primary key(GuestID)
);




insert into GUEST values ('GT001', 'Sasanka', 'Kothalawala', '1996-05-25', 28, 'sasankakothalawala@gmail.com', 'Lake Road', 'Anuradhapura', 'North Central', 's123');
insert into GUEST values ('GT002', 'Sandeepa', 'Muthukumari', '2002-01-11', 22 , 'sandeepamuthukumari@gmail.com', 'Albion Road', 'Ratnapura', 'Sabaragamuwa', 'm128');
insert into GUEST values ('GT003', 'Nadhahan', 'Jabeerkish', '2001-05-20', 23, 'nadhajabeer@gmail.com', 'Armour Street', 'Kurunegala', 'North Western', 'n222');
insert into GUEST values ('GT004', 'Nafla', 'Naleef', '2000-03-17', 24 , 'naflanaleef@gmail.com', 'Barber Street', 'Galle', 'South', 'n345');
insert into GUEST values ('GT005', 'Niwarthana', 'Madushani', '1996-04-08', 28 , 'niwarthanamadushani@gmail.com', 'Church Street', 'Colombo', 'Western', 'm000');
insert into GUEST values ('GT006', 'Gagani', 'Wedamulla', '1997-08-15', 27, 'gaganiwedamulla@gmail.com', 'Darley Road', 'Badulla', 'Uva', 'g454');
insert into GUEST values ('GT007', 'Mithurshan', 'Rajalingum', '1998-11-09', 26 , 'mithurshanrajalingum@gmail.com', 'Chekku Street', 'Jafna', 'Northern', 'm909');
insert into GUEST values ('GT008', 'Sadun', 'Chamara', '1999-12-24', 25 , 'sadunchamara@gmail.com', 'Deans Road', 'Kandy', 'Central', 'c333');
insert into GUEST values ('GT009', 'Minosh','Ahamed', '1999-01-20', 25, 'minoshahamed@gmail.com', 'Duplication Road', 'Batticaloa', 'Eastern', 'a123');
insert into GUEST values ('GT0010', 'Anne', 'Fernando', '2002-11-06', 22 , 'annefernando@gmail.com', 'Wall Street', 'Puttalam', 'North Western', 'f455');

SELECT * FROM hoteldatabase1.GUEST;

-- Updating data in GUEST table
UPDATE GUEST
SET FirstName = 'Nadha', LastName='Jabeer'
WHERE GuestID ='GT003';

UPDATE GUEST
SET FirstName = 'Mithukshan', LastName='Rajaaperu'
WHERE GuestID ='GT007';

-- Deleting one row from the GUEST table
DELETE FROM GUEST
WHERE GuestID = 'GT005';



create TABLE CONTACTNUMBER(
GuestID varchar(10) not null,
ContactNumber varchar(15) not null
);

INSERT INTO CONTACTNUMBER (GuestID, ContactNumber)
VALUES ('GT001' , '0774711139'),('GT001' , '0711777544' ),
('GT002', '0785524796'  ),('GT002' , '0725464569' ),
('GT003', '0701256935' ),('GT003', '0725465567' ),
('GT004', '0754125569' ),('GT004', '0725465098' ),
('GT005' , '0761211456' ),('GT005' , '0725467649'),
('GT006' , '0746558921'),('GT006', '0725465561' ),
('GT007', '0701215588' ),('GT007' , '0725465701'),
('GT008' , '0785566987' ),('GT008' , '0725465000'),
('GT009', '0725465569' ),('GT009' , '0725465090'),
('GT0010' , '0725465569'),('GT0010' , '0725465111');


-- Updating data in  table
UPDATE CONTACTNUMBER
SET ContactNumber = '0711777588'
WHERE GuestID = 'GT001' ;

UPDATE CONTACTNUMBER
SET ContactNumber = '0713767599'
WHERE GuestID = 'GT002';

-- Deleting one row from the CONTACTNUMBER table
DELETE FROM CONTACTNUMBER
WHERE GuestID = 'GT005';


ALTER TABLE CONTACTNUMBER
ADD constraint FK_CONTACTNUMBER_GUEST foreign key (GuestID) REFERENCES GUEST(GuestID) ON DELETE CASCADE ON UPDATE CASCADE;


SELECT * FROM hoteldatabase1.CONTACTNUMBER;

create table ROOM(
RoomNumber varchar(5),
RoomType varchar(15),
Rate varchar(10),
BedType varchar(10),
CleaningStatus varchar(15),
primary key(RoomNumber)
);


insert into ROOM values ('RN01', 'AC', '8.2', 'Quad', 'Clean' );
insert into ROOM values ('RN02', 'Non AC', '6.5', 'Quad', 'Clean' );
insert into ROOM values ('RN03', 'AC', '9.3', 'Triple', 'Clean' );
insert into ROOM values ('RN04', 'AC', '10.0', 'Double', 'Clean' );
insert into ROOM values ('RN05', 'Non AC', '8.9', 'Triple', 'Clean' );
insert into ROOM values ('RN06', 'AC', '9.0', 'Single', 'Clean' );
insert into ROOM values ('RN07', 'Non AC', '7.8', 'Triple', 'Clean' );
insert into ROOM values ('RN08', 'AC', '8.7', 'Quad', 'Clean' );
insert into ROOM values ('RN09', 'AC', '9.8', 'Single', 'Clean' );
insert into ROOM values ('RN010', 'Non AC', '7.8', 'Double', 'Clean' );

SELECT * FROM hoteldatabase1.ROOM;

-- Updating data in ROOM table
UPDATE ROOM
SET Rate ='8.8'
WHERE RoomNumber ='RN01';

UPDATE ROOM
SET Rate ='8.7'
WHERE RoomNumber ='RN07';

-- Deleting one row from the ROOM table
DELETE FROM ROOM
WHERE RoomNumber = 'RN010';


create table ROOMTYPE(
TypeID varchar(10),
MaximumGuest int,
TotalRooms int,
R_Description varchar(250),
RoomPrice int,
primary key(TypeID)
);

insert into ROOMTYPE values ('RT01', 1, 2, 'AC and high-speed Wi-Fi ', 7000 );
insert into ROOMTYPE values ('RT02', 2, 2, 'AC high-speed Wi-Fi ', 14000 );
insert into ROOMTYPE values ('RT03', 3, 3, 'AC high-speed Wi-Fi ', 21000 );
insert into ROOMTYPE values ('RT04', 4, 3, 'AC high-speed Wi-Fi ', 28000);
insert into ROOMTYPE values ('RT05', 3, 3, 'AC and high-speed Wi-Fi ', 15000 );
insert into ROOMTYPE values ('RT06', 4, 3, 'AC and high-speed Wi-Fi ', 25000 );

SELECT * FROM hoteldatabase1.ROOMTYPE;

-- Updating data in ROOMTYPE table
UPDATE ROOMTYPE
SET R_Description='Non AC and high-speed Wi-Fi'
WHERE TypeID ='RT05';

UPDATE ROOMTYPE
SET R_Description='Non AC and high-speed Wi-Fi'
WHERE TypeID ='RT06';

-- Deleting one row from the ROOMTYPE table
DELETE FROM ROOMTYPE
WHERE TypeID = 'RT06';


create table RESERVATION (
GuestID varchar(10) not null,
CheckInDate date not null,
CheckOutDate date,
NumberOfGuests int,
RoomNumber varchar(5)

);


ALTER table RESERVATION 
ADD constraint FK_RESERVATION_GUEST foreign key (GuestID) REFERENCES GUEST(GuestID) ON DELETE CASCADE ON UPDATE CASCADE,
ADD constraint FK_RESERVATION_ROOM foreign key (RoomNumber) REFERENCES ROOM(RoomNumber) ON DELETE CASCADE ON UPDATE CASCADE;

insert into RESERVATION values ('GT001','2024-03-01', '2024-03-03', 4 , 'RN01' );
insert into RESERVATION values ('GT002','2024-03-02', '2024-03-05', 4 , 'RN02' );
insert into RESERVATION values ('GT003','2024-03-04', '2024-03-05', 2 , 'RN04' );
insert into RESERVATION values ('GT004','2024-03-02', '2024-03-05', 3 , 'RN03' );
insert into RESERVATION values ('GT005','2024-03-05', '2024-03-06', 4 , 'RN01' );
insert into RESERVATION values ('GT006','2024-03-04', '2024-03-06', 3 , 'RN05' );
insert into RESERVATION values ('GT007','2024-03-02', '2024-03-06', 2 , 'RN010' );
insert into RESERVATION values ('GT008','2024-03-07', '2024-03-08', 4 , 'RN01' );
insert into RESERVATION values ('GT009','2024-03-10', '2024-03-12', 3 , 'RN07' );
insert into RESERVATION values ('GT0010','2024-03-13', '2024-03-15',4 , 'RN08' );

SELECT * FROM hoteldatabase1.RESERVATION;

-- Updating data in RESERVATION table
UPDATE RESERVATION
SET CheckInDate='2024-03-04', CheckOutDate='2024-03-05'
WHERE GuestID ='GT005';

UPDATE RESERVATION
SET CheckInDate='2024-03-09', CheckOutDate='2024-03-11'
WHERE GuestID ='GT009';

DELETE FROM RESERVATION
WHERE GuestID = 'GT005';


create table INVOICE(
GuestID varchar(10) not null,
IssueDate date,
DueDate date,
TaxAmount varchar(15),
TotalAmount varchar(15)

);

ALTER TABLE INVOICE
ADD constraint FK_INVOICE_GUEST foreign key (GuestID) REFERENCES GUEST(GuestID) ON DELETE CASCADE ON UPDATE CASCADE;

insert into INVOICE values ('GT001', '2024-03-01', '2024-03-03', 'Rs.4000', 'Rs.32000');
insert into INVOICE values ('GT002', '2024-03-02', '2024-03-04', 'Rs.4000', 'Rs.32000');
insert into INVOICE values ('GT003', '2024-03-04', '2024-03-06', 'Rs.4000', 'Rs.32000');
insert into INVOICE values ('GT004', '2024-03-02', '2024-03-04', 'Rs.2000', 'Rs.16000');
insert into INVOICE values ('GT005', '2024-03-05', '2024-03-07', 'Rs.4000', 'Rs.32000');
insert into INVOICE values ('GT006', '2024-03-04', '2024-03-06', 'Rs.3000', 'Rs.24000');
insert into INVOICE values ('GT007', '2024-03-02', '2024-03-04', 'Rs.3000', 'Rs.24000');
insert into INVOICE values ('GT008', '2024-03-07', '2024-03-09', 'Rs.4000', 'Rs.32000');
insert into INVOICE values ('GT009', '2024-03-10', '2024-03-12', 'Rs.3000', 'Rs.24000');
insert into INVOICE values ('GT0010', '2024-03-13', '2024-03-15', 'Rs.4000', 'Rs.32000');

SELECT * FROM hoteldatabase1.INVOICE;

-- Updating data in INVOICE table
UPDATE INVOICE
SET IssueDate='2024-03-04', DueDate ='2024-03-06'
WHERE GuestID ='GT005';

UPDATE INVOICE
SET IssueDate='2024-03-09', DueDate ='2024-03-11'
WHERE GuestID ='GT009';

DELETE FROM INVOICE
WHERE GuestID = 'GT005';


create table PAYMENT(
PaymentID varchar(10) not null,
GuestID varchar(10) not null,
PaymentMethod varchar(20) not null,
PaymentDate date,
TotalAmount varchar(15),
primary key(PaymentID)

);

ALTER TABLE PAYMENT
ADD constraint FK_PAYMENT_GUEST foreign key (GuestID) REFERENCES GUEST(GuestID) ON DELETE CASCADE ON UPDATE CASCADE;

insert into PAYMENT values ('GP001', 'GT001','Cash Payment', '2024-03-01', 'Rs.28000' );
insert into PAYMENT values ('GP002', 'GT002','Credit Card', '2024-03-02', 'Rs.14000' );
insert into PAYMENT values ('GP003', 'GT004','Cash Payment', '2024-03-02', 'Rs.14000' );
insert into PAYMENT values ('GP004', 'GT007','Debit Card', '2024-03-02', 'Rs.21000' );
insert into PAYMENT values ('GP005', 'GT003','Credit Card', '2024-03-04', 'Rs.28000' );
insert into PAYMENT values ('GP006', 'GT006','Credit Cardt', '2024-03-04', 'Rs.21000' );
insert into PAYMENT values ('GP007', 'GT005','Cash Payment', '2024-03-05', 'Rs.28000' );
insert into PAYMENT values ('GP008', 'GT008','Cash Payment', '2024-03-07', 'Rs.28000' );
insert into PAYMENT values ('GP009', 'GT009','Cash Payment', '2024-03-10', 'Rs.21000' );
insert into PAYMENT values ('GP0010', 'GT0010','Credit Card', '2024-03-13', 'Rs.28000' );

-- Updating data in PAYMENT table
UPDATE PAYMENT
SET PaymentMethod = 'Cash Payment'
WHERE PaymentID ='GP005';

UPDATE PAYMENT
SET PaymentMethod = 'Debit Card'
WHERE PaymentID ='GP007';

-- Deleting one row from the PAYMENT table
DELETE FROM PAYMENT
WHERE PaymentID = 'GP007';

SELECT * FROM hoteldatabase1.PAYMENT;

create table CANCELLATION (
CancellationID varchar(5),
GuestID varchar(10) not null,
PaymentID varchar(10) not null,
Reason varchar(50),
RefundAmount varchar(15),
CancellationDate date,
primary key(CancellationID)
);

ALTER TABLE CANCELLATION
ADD constraint FK_CANCELLATION_GUEST foreign key (GuestID) REFERENCES GUEST(GuestID) ON DELETE CASCADE ON UPDATE CASCADE,
ADD constraint FK_CANCELLATION_PAYMENT foreign key (PaymentID) REFERENCES PAYMENT(PaymentID) ON DELETE CASCADE ON UPDATE CASCADE;

insert into CANCELLATION values ('C001', 'GT007', 'GP004', 'Weather Conditions', 'Rs.23000', '2024-03-03' );
insert into CANCELLATION values ('C002', 'GT005', 'GP007', 'Change the hotel', 'Rs.31000', '2024-03-03' );
insert into CANCELLATION values ('C003', 'GT009', 'GP009', 'Weather Conditions', 'Rs.23000', '2024-03-03' );
insert into CANCELLATION values ('C004', 'GT001', 'GP001', 'Weather Conditions', 'Rs.28000', '2024-03-01' );
insert into CANCELLATION values ('C005', 'GT002', 'GP002', 'Change the hotel', 'Rs.14000', '2024-03-02' );
insert into CANCELLATION values ('C006', 'GT004', 'GP003', 'Weather Conditions', 'Rs.14000', '2024-03-02' );

-- Updating data in CANCELLATION table
UPDATE CANCELLATION
SET Reason='Change the hotel' , CancellationDate='2024-03-02'
WHERE CancellationID ='C003';

UPDATE CANCELLATION
SET Reason='Change the destination' , CancellationDate='2024-03-01'
WHERE CancellationID ='C005';

DELETE FROM CANCELLATION
WHERE CancellationID = 'C002';

SELECT * FROM hoteldatabase1.CANCELLATION;







-- Simple Queries

-- 1). Select Operation: Retrieve all information about STAFF
SELECT * FROM hoteldatabase1.staff;

-- 2). Project Operation: Retrieve only StaffID, S_Name and Position from the STAFF table.
SELECT StaffID, S_Name, Position FROM hoteldatabase1.staff;

-- 3). Cartesian Product Operation:  Retrieve a Cartesian product of ROOM and ROOMTYPE tables.
SELECT * FROM ROOM, ROOMTYPE;

-- 4). -- Creating a User View: Create a view named "Passenger_Details" to display passenger information
CREATE VIEW STAFF_Details AS
SELECT StaffID, S_Name, Position
FROM STAFF;

   -- select data from the GUEST_Details
   select * from STAFF_Details;
   
-- 5). Renaming Operation: Rename the "RoomType" column in the ROOM table to "Type".
ALTER TABLE ROOM
RENAME COLUMN RoomType TO Type;
select * from ROOM;

-- 6). -- Aggregation Function: Calculate the average salary of staff members.
SELECT AVG(RoomPrice) AS Average_RoomPrice FROM ROOMTYPE;

-- 7).Use of LIKE Keyword: Retrieve all Guests whose first name starts with "S".
SELECT * FROM hoteldatabase1.guest WHERE FirstName LIKE 'S%';




-- Complex Query

-- 1). Union: Retrieve all passengers' names and emails.
SELECT PaymentID FROM PAYMENT
UNION
SELECT CancellationID FROM CANCELLATION;

-- 2). Intersection: Intersection of GuestIDs between RESERVATION and CANCELLATION
select distinct g.GuestID from GUEST g
inner join Cancellation cp ON g.GuestID = cp.GuestID; 

-- 3). Set Difference: Guests who reserved reservation but not cancelled
select GuestID from reservation
EXCEPT
select GuestID from cancellation;

-- 4). Division: Find Guests who have cancelled reservation.
SELECT GuestID, FirstName, LastName FROM GUEST
WHERE GuestID NOT IN (
    SELECT GuestID FROM CANCELLATION
);

-- 5). Inner Join :

-- 1st Method
select * from cancellation as c inner join guest as g on c.GuestID = g.GuestID;

-- 2nd Method
SELECT G.FirstName, G.LastName, R.RoomNumber
FROM GUEST G
INNER JOIN RESERVATION R ON G.GuestID = R.GuestID;

-- 3rd Method - inner join using view
CREATE VIEW GuestAndReservationDetails AS
SELECT G.GuestID, G.FirstName, G.LastName, R.RoomNumber, CheckInDate
FROM GUEST G
JOIN RESERVATION R ON G.GuestID = R.GuestID;

SELECT * FROM GuestAndReservationDetails;


-- 6). Natural Join : Retrieve guests who have reserved along with their reservation details using natural join.
-- 1st Method
select * from cancellation natural join guest;

-- 2nd Method by using user view
CREATE VIEW GuestAndPayment AS
SELECT G.GuestID, G.FirstName, G.LastName, P.PaymentMethod
FROM GUEST G
NATURAL JOIN PAYMENT P;

SELECT * FROM GuestAndPayment;



-- 7). Left Outer Join : Retrieve all guestss with their details, including those who haven't cancelled reservation.

-- 1st Method
SELECT G.GuestID, G.FirstName, G.LastName, C.Reason
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID;

-- 2nd Method - by using user view
CREATE VIEW GuestAndCancellation AS
SELECT G.GuestID, G.FirstName, G.LastName, C.Reason
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID;

SELECT * FROM GuestAndCancellation;


-- 8). Right Outer Join: 

-- 1st Method - Retrieve all details of guests, including those guestss who haven't cancelled reservation
SELECT *
FROM CANCELLATION cn 
RIGHT JOIN GUEST g ON  g.GuestID = cn.GuestID;

-- 2nd Method - by using user view
CREATE VIEW RoomAndReservation AS
SELECT R.RoomNumber, R.Type, RES.NumberOfGuests
FROM ROOM R
RIGHT JOIN RESERVATION RES ON R.RoomNumber = RES.RoomNumber;

SELECT * FROM RoomAndReservation;



-- 9).Full Outer Join : Retrieve all guestss and their cancellation details, including those guestss who haven't cancelled any reservation

-- 1st Method
-- Left Outer Join
SELECT *
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID
UNION ALL
-- Right Outer Join
SELECT *
FROM GUEST G
RIGHT JOIN CANCELLATION C ON G.GuestID = C.GuestID
WHERE G.GuestID IS NULL;

-- 2nd Method - by using user view
CREATE VIEW GuestAndCancellations0 AS
SELECT G.GuestID, G.FirstName, G.LastName, C.Reason
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID
UNION ALL
SELECT G.GuestID, G.FirstName, G.LastName, C.Reason
FROM GUEST G
RIGHT JOIN CANCELLATION C ON G.GuestID = C.GuestID
WHERE G.GuestID IS NULL;

 select * from GuestAndCancellations0;
 
 
 -- 10). Outer join 
-- Creating a view to combine guest and cancellation information using a full outer join
CREATE VIEW Guest_Cancellation AS
SELECT COALESCE(G.GuestID, 'No Guest') AS GuestID, COALESCE(G.FirstName, 'No Guest') AS FirstName, COALESCE(G.LastName, 'No Guest') AS LastName, 
       C.CancellationID, C.Reason
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID
UNION
SELECT COALESCE(G.GuestID, 'No Guest') AS GuestID, COALESCE(G.FirstName, 'No Guest') AS FirstName, COALESCE(G.LastName, 'No Guest') AS LastName, 
       C.CancellationID, C.Reason
FROM GUEST G
RIGHT JOIN CANCELLATION C ON G.GuestID = C.GuestID;

select * from Guest_Cancellation;

-- 11). Outer Union:  Creating a view to combine guest and cancellation information in a single result set.
-- Creating a view that combines information from the CANCELLATION and GUEST tables, categorizing them as either guests or cancellations.
CREATE VIEW CancellationAndGuest AS
SELECT GuestID AS ID, FirstName AS Name, 'Guest' AS Type
FROM GUEST
UNION
SELECT GuestID AS ID, Reason AS Name, 'Cancellation' AS Type
FROM CANCELLATION;
-- Retrieving data from the CancellationAndGuest view to see combined guest and cancellation information.
SELECT * FROM CancellationAndGuest;



-- 12). This query retrieves guest information along with their cancellation details for guests who have made reservations for rooms of type 'AC'.
SELECT g.GuestID, g.FirstName, g.LastName, c.CancellationID, c.Reason
FROM GUEST g
INNER JOIN CANCELLATION c ON g.GuestID = c.GuestID
WHERE g.GuestID IN (SELECT GuestID FROM RESERVATION WHERE RoomNumber IN (SELECT RoomNumber FROM ROOM WHERE Type = 'AC'));


-- 13).
SELECT G.GuestID, G.FirstName, G.LastName
FROM GUEST G
WHERE NOT EXISTS (
    SELECT *
    FROM RESERVATION R
    LEFT JOIN CANCELLATION C ON R.GuestID = C.GuestID
    WHERE G.GuestID = R.GuestID
    AND C.CancellationID IS NOT NULL
);

-- 14).
SELECT G.GuestID, G.FirstName, G.LastName
FROM GUEST G
WHERE EXISTS (
    SELECT *
    FROM RESERVATION R
    NATURAL JOIN PAYMENT P
    WHERE G.GuestID = R.GuestID
);











-- Tunning 

-- 1). Union Tunning

-- Before Tunning
explain SELECT PaymentID FROM PAYMENT
UNION
SELECT CancellationID FROM CANCELLATION;

-- Creating Indexes
CREATE INDEX idx_paymentid ON PAYMENT (PaymentID);
CREATE INDEX idx_cancellationid ON CANCELLATION (CancellationID);
show indexes from PAYMENT;
show index from CANCELLATION;

-- After Tunning
explain SELECT PaymentID FROM PAYMENT
UNION
SELECT CancellationID FROM CANCELLATION;



-- 2). Set Difference Tunning

-- Before Tunning
explain select GuestID from reservation
EXCEPT
select GuestID from cancellation;

-- Creating Indexes
CREATE INDEX idx_reservation_guestid ON Reservation (GuestID);
CREATE INDEX idx_cancellation_guestid ON Cancellation (GuestID);
show indexes from Reservation;
show index from CANCELLATION;

-- After Tunning
explain SELECT GuestID FROM Reservation
EXCEPT
SELECT GuestID FROM Cancellation;


-- 3). Inner join tunning

-- Before Tunning
EXPLAIN SELECT G.GuestID, G.FirstName, G.LastName, R.RoomNumber, CheckInDate
FROM GUEST G
INNER JOIN RESERVATION R ON G.GuestID = R.GuestID;

-- create indexes

CREATE INDEX idx_guest_guestid ON GUEST (GuestID);
CREATE INDEX idx_reservation_guestid ON RESERVATION (GuestID);
show indexes from Guest;
show index from Reservation;

-- After Tunning
EXPLAIN 
SELECT G.GuestID, G.FirstName, G.LastName, R.RoomNumber, CheckInDate
FROM GUEST G
INNER JOIN RESERVATION R ON G.GuestID = R.GuestID;


-- 4). Left outer join Tunning

-- Before Tunning
CREATE VIEW GuestAndCancellation AS
SELECT G.GuestID, G.FirstName, G.LastName, C.Reason
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID;

explain select * from GuestAndCancellation ;

-- Index creation for GUEST table
CREATE INDEX idx_guest_id ON GUEST (GuestID);
-- Index creation for CANCELLATION table
CREATE INDEX idx_cancellation_guest_id ON CANCELLATION (GuestID);
show indexes from Guest;
show index from Reservation;

-- After Tunning
-- Recreate the view after optimization
CREATE VIEW GuestAndCancellation1 AS
SELECT G.GuestID, G.FirstName, G.LastName, C.Reason
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID;
explain select * from GuestAndCancellation1 ;




-- 5).Right Outer Join Tunning

-- Before Tunning
CREATE VIEW RoomAndReservation1 AS
SELECT R.RoomNumber, R.Type, RES.NumberOfGuests
FROM ROOM R
RIGHT JOIN RESERVATION RES ON R.RoomNumber = RES.RoomNumber;

explain SELECT * FROM RoomAndReservation1;

-- Index creation for ROOM table
CREATE INDEX idx_room_number ON ROOM (RoomNumber);
-- Index creation for RESERVATION table
CREATE INDEX idx_reservation_room_number ON RESERVATION (RoomNumber);
show indexes from room;
show index from Reservation;

-- After Tunning
-- Recreate the view after optimization
CREATE VIEW RoomAndReservation2 AS
SELECT R.RoomNumber, R.Type, RES.NumberOfGuests
FROM ROOM R
RIGHT JOIN RESERVATION RES ON R.RoomNumber = RES.RoomNumber;

explain SELECT * FROM RoomAndReservation2;


-- 6). Full Outer Join Tunning

-- Before Tunning
explain SELECT *
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID
UNION ALL

SELECT *
FROM GUEST G
RIGHT JOIN CANCELLATION C ON G.GuestID = C.GuestID
WHERE G.GuestID IS NULL;


CREATE INDEX idx_guest_guestid ON GUEST (GuestID);
CREATE INDEX idx_cancellation_guestid ON CANCELLATION (GuestID);
show indexes from guest;
show index from cancellation;

-- After Tunning
explain SELECT *
FROM GUEST G
LEFT JOIN CANCELLATION C ON G.GuestID = C.GuestID
UNION ALL
-- Right Outer Join
SELECT *
FROM GUEST G
RIGHT JOIN CANCELLATION C ON G.GuestID = C.GuestID
WHERE G.GuestID IS NULL;


-- 7). Outer Union Tunning

-- Before Tunning
CREATE VIEW CancellationAndGuest3 AS
SELECT GuestID AS ID, FirstName AS Name, 'Guest' AS Type
FROM GUEST
UNION
SELECT GuestID AS ID, Reason AS Name, 'Cancellation' AS Type
FROM CANCELLATION;

explain SELECT * FROM CancellationAndGuest3;



CREATE INDEX idx_guest_guestid ON GUEST (GuestID);
CREATE INDEX idx_cancellation_guestid ON CANCELLATION (GuestID);
show indexes from guest;
show indexes from cancellation;

-- After Tunning
CREATE VIEW CancellationAndGuest1 AS
SELECT GuestID AS ID, FirstName AS Name, 'Guest' AS Type
FROM GUEST
UNION
SELECT GuestID AS ID, Reason AS Name, 'Cancellation' AS Type
FROM CANCELLATION;

explain SELECT * FROM CancellationAndGuest1;


-- 8). Division Tunning

-- Before Tunning
explain select GuestID, FirstName, LastName FROM GUEST
WHERE GuestID NOT IN (
    SELECT GuestID FROM CANCELLATION
);

-- Create index
CREATE INDEX idx_cancellation_guestid ON CANCELLATION (GuestID);
show indexes from cancellation;

-- After Tunning
explain SELECT GuestID, FirstName, LastName FROM GUEST
WHERE GuestID NOT IN (
    SELECT GuestID FROM CANCELLATION
);


-- 9). Tunning for 14th Complex Query

-- Before Tunning
explain SELECT G.GuestID, G.FirstName, G.LastName
FROM GUEST G
WHERE EXISTS (
    SELECT *
    FROM RESERVATION R
    NATURAL JOIN PAYMENT P
    WHERE G.GuestID = R.GuestID
);

-- Create indexes
CREATE INDEX idx_reservation_guestid ON RESERVATION (GuestID);
show indexes from RESERVATION;
CREATE INDEX idx_payment_guestid ON PAYMENT (GuestID);
show indexes from PAYMENT;

-- After Tunning
explain SELECT G.GuestID, G.FirstName, G.LastName
FROM GUEST G
WHERE EXISTS (
    SELECT *
    FROM RESERVATION R
    NATURAL JOIN PAYMENT P
    WHERE G.GuestID = R.GuestID
);



-- 10). Tunning for Natural Join

-- Before Tunning
CREATE VIEW GuestAndPayment3 AS
SELECT G.GuestID, G.FirstName, G.LastName, P.PaymentMethod
FROM GUEST G
NATURAL JOIN PAYMENT P;

explain SELECT * FROM GuestAndPayment3;

-- Create index

CREATE INDEX idx_payment_guestid ON PAYMENT (GuestID);
show indexes from PAYMENT;

-- After Tunning
CREATE VIEW GuestAndPayment4 AS
SELECT G.GuestID, G.FirstName, G.LastName, P.PaymentMethod
FROM GUEST G
NATURAL JOIN PAYMENT P;
explain SELECT * FROM GuestAndPayment4;