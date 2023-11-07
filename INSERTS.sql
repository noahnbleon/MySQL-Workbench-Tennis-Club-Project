INSERT INTO `cs_g1p1`.`TennisClub` (`clubName`, `clubAddress`, `clubEmail`, `clubPhone`)
VALUES ('Ace Tennis Club', '123 Tennis Court Lane', 'contact@acetennisclub.com', '+1-(707)-555-1234');

SELECT * FROM TennisClub;

INSERT INTO `cs_g1p1`.`Member` (`memberFName`, `memberLName`, `memberEmail`, `memberPhone`, `memberType`, `dateJoined`)
VALUES 
('John', 'Doe', 'john.doe@example.com', '+1-(707)-555-2345', 'annual', '2021-01-01'),
('Jane', 'Smith', 'jane.smith@example.com', '+1-(706)-555-2346', 'monthly', '2021-02-24'),
('Jim', 'Brown', 'jim.brown@example.com', '+1-(707)-555-2347', 'quarterly', '2021-03-21'),
('Julia', 'Jones', 'julia.jones@example.com', '+1-(707)-555-2348', 'inactive', '2021-04-01'),
('Jack', 'Taylor', 'jack.taylor@example.com', '+1-(707)-555-2349', 'annual', '2021-04-15'),
('Jasmine', 'Lee', 'jasmine.lee@example.com', '+1-(702)-555-2350', 'monthly', '2021-06-17'),
('Jacob', 'Davis', 'jacob.davis@example.com', '+1-(706)-555-2351', 'quarterly', '2021-09-28'),
('Jocelyn', 'Garcia', 'jocelyn.garcia@example.com', '+1-(707)-555-2352', 'inactive', '2021-09-28'),
('Jeremy', 'Miller', 'jeremy.miller@example.com', '+1-(701)-555-2353', 'annual', '2021-09-29'),
('Jill', 'Wilson', 'jill.wilson@example.com', '+1-(707)-555-2354', 'monthly', '2021-11-03');

SELECT * FROM Member;

INSERT INTO `cs_g1p1`.`Court` (`TennisClub_clubID`, `courtName`, `courtType`)
VALUES 
(1, 'Court 1', 'clay'),
(1, 'Court 2', 'clay'),
(1, 'Court 3', 'clay'),
(1, 'Court 4', 'grass'),
(1, 'Court 5', 'grass'),
(1, 'Court 6', 'hard'),
(1, 'Court 7', 'clay'),
(1, 'Court 8', 'grass'),
(1, 'Court 9', 'hard'),
(1, 'Court 10', 'clay');

SELECT * FROM Court;

INSERT INTO `cs_g1p1`.`Coach` (`TennisClub_clubID`, `coachFullName`, `qualifications`, `specialties`, `availability`)
VALUES 
(1, 'Alice Johnson', 'Beginner Coach', 'Junior Development', 'Weekdays'),
(1, 'Bob Martin', 'Intermediate Coach', 'High Performance', 'Weekends'),
(1, 'Charlie Gomez', 'Advanced Coach', 'Adult Coaching', 'Weekdays and Weekends'),
(1, 'Diane King', 'Beginner Coach', 'Cardio Tennis', 'Mornings'),
(1, 'Edward Lopez', 'Intermediate Coach', 'Beginner Lessons', 'Afternoons'),
(1, 'Fiona Chen', 'Advanced Coach', 'Tournament Play', 'Evenings'),
(1, 'George Patel', 'Beginner Coach', 'Youth Lessons', 'Weekends and Evenings'),
(1, 'Hannah Lewis', 'Intermediate Coach', 'Strategy', 'Weekdays'),
(1, 'Ian Clark', 'Advanced Coach', 'Mental Game', 'Weekends'),
(1, 'Juliette Ramos', 'Beginner Coach', 'Doubles Play', 'Mornings and Afternoons');

SELECT * FROM Coach;

INSERT INTO `cs_g1p1`.`Tournament` (`TennisClub_clubID`, `tournamentName`, `tournamentType`, `matchesDesc`, `tournDate`)
VALUES 
(1, 'New Year Bash', 'singles', 'Kick-off tournament for the new year.', '2022-01-05'),
(1, 'Valentine Match', 'mixed doubles', 'Valentine’s day special event.', '2022-02-14'),
(1, 'March Madness', 'singles', 'Open tournament for all ages.', '2022-03-20'),
(1, 'April Showers', 'doubles', 'Spring doubles tournament.', '2022-04-18'),
(1, 'May Flowers', 'singles', 'Season opening singles tournament.', '2022-05-15'),
(1, 'Summer Classic', 'doubles', 'Annual doubles tournament.', '2022-07-12'),
(1, 'Autumn Open', 'mixed doubles', 'Mixed doubles event.', '2022-09-23'),
(1, 'Winter Cup', 'singles', 'End of year championship.', '2022-11-30'),
(1, 'Holiday Invitational', 'doubles', 'Invitational event for club members.', '2022-12-10'),
(1, 'January Special', 'mixed doubles', 'Celebratory mixed doubles event.', '2023-01-25');

SELECT * FROM Tournament;

INSERT INTO `cs_g1p1`.`ProShop` (`shopName`, `TennisClub_clubID`)
VALUES 
('Ace Rackets', 1);

SELECT * FROM ProShop;

INSERT INTO `cs_g1p1`.`Booking` (`Member_memberID`, `Court_courtID`, `bookingDate`, `bookingStartTime`, `bookingEndTime`, `bookingType`)
VALUES 
(1, 1, '2023-05-05', '09:00:00', '10:00:00', 'singles'),
(1, 2, '2023-05-05', '10:00:00', '11:00:00', 'singles'),
(1, 1, '2023-05-06', '09:00:00', '10:00:00', 'singles'),
(1, 5, '2023-05-07', '10:00:00', '11:00:00', 'singles'),
(3, 1, '2023-05-08', '11:00:00', '12:00:00', 'doubles'),
(4, 7, '2023-05-08', '13:00:00', '14:00:00', 'doubles'),
(3, 1, '2023-05-08', '11:00:00', '12:00:00', 'doubles'),
(3, 1, '2023-05-10', '11:00:00', '12:00:00', 'doubles'),
(4, 2, '2023-05-10', '11:00:00', '12:00:00', 'singles'),
(1, 1, '2023-05-12', '11:00:00', '12:00:00', 'doubles'),
(4, 8, '2023-07-15', '12:00:00', '13:00:00', 'singles'),
(1, 2, '2023-08-01', '13:00:00', '14:00:00', 'doubles'),
(1, 1, '2023-09-15', '15:00:00', '16:00:00', 'singles'),
(8, 5, '2023-09-15', '15:00:00', '16:00:00', 'singles'),
(1, 1, '2023-09-15', '15:00:00', '16:00:00', 'singles'),
(1, 1, '2023-09-15', '16:00:00', '17:00:00', 'singles'),
(8, 2, '2023-09-16', '15:00:00', '16:00:00', 'singles'),
(8, 5, '2023-09-17', '15:00:00', '16:00:00', 'singles'),
(8, 5, '2023-10-18', '16:00:00', '17:00:00', 'doubles'),
(9, 2, '2023-10-20', '12:00:00', '13:00:00', 'singles'),
(10, 1, '2023-10-20', '13:00:00', '14:00:00', 'doubles');

SELECT * FROM Booking;

INSERT INTO `cs_g1p1`.`TrainingSession` (`Coach_coachID`, `Member_memberID`, `sessionDate`, `sessionTime`, `sessionType`)
VALUES 
(1, 1, '2023-05-05', '10:00:00', 'beginner'),
(1, 2, '2023-05-07', '14:00:00', 'beginner'),
(1, 1, '2023-05-07', '13:00:00', 'beginner'),
(2, 1, '2023-05-10', '09:00:00', 'beginner'),
(2, 5, '2023-05-11', '14:00:00', 'intermediate'),
(3, 8, '2023-05-15', '10:00:00', 'beginner'),
(5, 1, '2023-05-21', '11:00:00', 'intermediate'),
(1, 8, '2023-05-26', '12:00:00', 'advanced'),
(9, 2, '2023-05-30', '14:00:00', 'advanced'),
(10, 2, '2023-06-02', '10:00:00', 'intermediate'),
(3, 1, '2023-06-05', '13:00:00', 'advanced'),
(4, 5, '2023-06-09', '12:00:00', 'beginner'),
(5, 3, '2023-06-12', '14:00:00', 'intermediate'),
(6, 2, '2023-06-12', '09:00:00', 'advanced'),
(1, 9, '2023-06-12', '09:00:00', 'beginner'),
(7, 8, '2023-06-15', '10:00:00', 'intermediate'),
(9, 5, '2023-06-16', '15:00:00', 'advanced'),
(3, 8, '2023-06-16', '12:00:00', 'advanced'),
(9, 6, '2023-06-18', '16:00:00', 'advanced'),
(8, 2, '2023-06-18', '16:00:00', 'intermediate'),
(3, 10, '2023-06-24', '14:00:00', 'advanced'),
(4, 5, '2023-06-25', '13:00:00', 'beginner'),
(5, 3, '2023-06-26', '12:00:00', 'intermediate'),
(6, 2, '2023-06-26', '10:00:00', 'advanced'),
(10, 1, '2023-06-27', '10:00:00', 'beginner');

SELECT * FROM TrainingSession;

INSERT INTO `cs_g1p1`.`TournPlayer` (`Member_memberID`, `Tournament_tournamentID`, `playerEntryDate`)
VALUES 
(1, 1, '2022-01-02'),
(2, 1, '2022-01-02'),
(3, 1, '2022-01-03'),
(4, 1, '2022-01-04'),
(4, 2, '2022-02-09'),
(2, 2, '2022-02-10'),
(3, 2, '2022-02-10'),
(1, 2, '2022-02-13'),
(2, 3, '2022-03-07'),
(1, 3, '2022-03-08'),
(3, 3, '2022-03-08'),
(4, 3, '2022-03-09'),
(2, 4, '2022-04-11'),
(1, 4, '2022-04-13'),
(3, 4, '2022-04-16'),
(4, 4, '2022-04-17'),
(1, 5, '2022-05-11'),
(3, 5, '2022-05-13'),
(4, 5, '2022-05-14'),
(2, 5, '2022-05-14'),
(5, 6, '2022-07-02'),
(7, 6, '2022-07-02'),
(1, 6, '2022-07-05'),
(6, 6, '2022-07-10'),
(2, 6, '2022-07-11'),
(3, 7, '2022-09-17'),
(7, 7, '2022-09-20'),
(8, 7, '2022-09-21'),
(2, 7, '2022-09-21'),
(4, 7, '2022-09-22'),
(1, 7, '2022-09-22'),
(2, 8, '2022-11-23'),
(6, 8, '2022-11-23'),
(1, 8, '2022-11-24'),
(8, 8, '2022-11-25'),
(4, 8, '2022-11-26'),
(5, 8, '2022-11-28'),
(2, 9, '2022-12-03'),
(7, 9, '2022-12-03'),
(8, 9, '2022-12-03'),
(5, 9, '2022-12-05'),
(4, 9, '2022-12-08'),
(3, 9, '2022-12-08'),
(1, 10, '2023-01-19'),
(9, 10, '2023-01-21'),
(3, 10, '2023-01-21'),
(5, 10, '2023-01-22'),
(4, 10, '2023-01-23'),
(2, 10, '2023-01-23');

SELECT * FROM TournPlayer;

INSERT INTO Employee (employeeID, TennisClub_clubID, employeeFName, employeeLName, employeeSalary)
VALUES (1, 1, 'Dexter', 'Doe', 100000);
INSERT INTO Employee (employeeID, TennisClub_clubID, employeeFName, employeeLName, employeeSalary, managerID)
VALUES (2, 1, 'Lois', 'Doe', 90000, 1),
       (3, 1, 'Peter', 'Lane', 80000, 1),
       (4, 1, 'Mary', 'Park', 70000, 1),
       (5, 1, 'Clark', 'Wayne', 60000, 2),
       (6, 1, 'Bruce', 'Kent', 50000, 2),
       (7, 1, 'Diana', 'Curry', 40000, 2),
       (8, 1, 'Arthur', 'Allen', 30000, 3),
       (9, 1, 'Barry', 'Prince', 20000, 3),
       (10, 1, 'Hal', 'Jesup', 10000, 3);

SELECT * FROM Employee;

INSERT INTO Department (deptName, Employee_employeeID, deptEmail, deptPhone)
VALUES ('Accounting', 2, 'accounting@example.com', '+0-(123) 456-7890'),
       ('Sales', 2, 'sales@example.com', '+0-(987) 654-3210'),
       ('Marketing', 2,  'marketing@example.com', '+0-(555) 555-5555'),
       ('Engineering', 3,  'engineering@example.com', '+0-(666) 666-6666'),
       ('Customer Support', 2, 'customersupport@example.com', '+0-(777) 777-7777'),
       ('Human Resources', 2, 'hr@example.com', '+0-(888) 888-8888'),
       ('IT', 3, 'it@example.com', '+0-(999) 999-9999'),
       ('Legal', 3, 'legal@example.com', '+0-(010) 010-0100'),
       ('Finance', 2, 'finance@example.com', '+0-(111) 111-1111'),
       ('Executive', 1, 'executive@example.com', '+0-(222) 222-2222');

SELECT * FROM Department;

INSERT INTO ProShopItem (itemID, ProShop_shopName, itemName, itemType, supplier, salePrice, stockQuantity)
VALUES (1, 'Ace Rackets', 'Serena Williams #1 Tennis Racket', 'Racket', 'Top Tennis', 80.00, 10),
       (2, 'Ace Rackets', 'Serena Williams #2 Tennis Racket', 'Racket', 'Top Tennis', 60.00, 5),
       (3, 'Ace Rackets', 'Serena Williams #3 Tennis Racket', 'Racket', 'Top Tennis', 50.00, 8),
       (4, 'Ace Rackets', 'Serena Williams Premium Choice Tennis Balls 5ct', 'Ball', 'Superior Sports', 30.00, 12),
       (5, 'Ace Rackets', 'Serena Williams Strong Shot Tennis Balls 20ct', 'Ball', 'Superior Sports', 100.00, 15),
       (6, 'Ace Rackets', 'Super Sports Pro Racket', 'Racket', 'Tennis Champ', 80.00, 10),
       (7, 'Ace Rackets', "Super Sports Champ's First Racket", 'Racket', 'Top Tennis', 40.00, 13),
       (8, 'Ace Rackets', "Super Sports Champ's First Racket For Girls", 'Racket', 'Top Tennis', 45.20, 18),
       (9, 'Ace Rackets', 'Pro Premium Tennis Balls 5ct', 'Ball', 'Superior Sports', 20.00, 12),
       (10, 'Ace Rackets', 'Pup Tennis Balls - For Your Favorite Teammate 10ct', 'Ball', 'Superior Sports', 20.00, 6);


SELECT * FROM ProShopItem;

INSERT INTO Billing (Member_memberID, invoiceDate, amount, status)
VALUES (1, '2021-01-01', 200.00, 'Annual Membership Fee - Paid'),
       (2, '2021-02-24', 20.00, 'Monthly Membership Fee - Paid'),
       (3, '2021-03-21', 72.00, 'Quarterly Membership Fee - Paid'),
       (2, '2021-03-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2021-04-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2021-05-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2021-06-24', 20.00, 'Monthly Membership Fee - Paid'),
       (3, '2021-07-21', 72.00, 'Quarterly Membership Fee - Paid'),
       (2, '2021-07-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2021-08-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2021-09-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2021-10-24', 20.00, 'Monthly Membership Fee - Paid'),
       (3, '2021-11-21', 72.00, 'Quarterly Membership Fee - Paid'),
       (2, '2021-11-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2021-12-24', 20.00, 'Monthly Membership Fee - Paid'),
       (1, '2022-01-01', 200.00, 'Annual Membership Fee - Paid'),
       (2, '2022-01-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2022-02-24', 20.00, 'Monthly Membership Fee - Paid'),
       (3, '2022-03-21', 72.00, 'Quarterly Membership Fee - Paid'),
       (2, '2022-03-24', 20.00, 'Monthly Membership Fee - Paid'),
       (2, '2022-04-24', 20.00, 'Monthly Membership Fee - Paid');
       
INSERT INTO Billing (Member_memberID, ProShopItem_itemID, invoiceDate, amount, status)
VALUES (1, 4, '2022-05-02', 30.00, 'Pro Shop Purchase - Paid');

SELECT * FROM Billing;
