USE cs_g1p1;



CREATE PROCEDURE Q1countTypesOfCourtsIn(IN aType VARCHAR(10))
#How many courts are type clay?
SELECT COUNT(*) 
FROM Court
WHERE courtType = aType;

CALL Q1countTypesOfCourtsIn('grass');



CREATE PROCEDURE Q2()
#How many Pro Shop items are in stock? (Excluding individual counts)
SELECT COUNT(*) AS itemsInStock
FROM ProShopItem
WHERE stockQuantity > 0;

CALL Q2();



CREATE PROCEDURE Q3()
#What are the names of the intermediate or advanced coaches who have availability on the weekends?
SELECT coachFullName
FROM Coach
WHERE qualifications IN ('Advanced Coach', 'Intermediate Coach')
AND availability = 'Weekends';

CALL Q3();



CREATE PROCEDURE Q4()  
#What are the names of the tournament players who have competed in more than 1 tournament?
SELECT memberID, COUNT(TournPlayer.Member_memberID) AS timesCompeted, memberFName, memberLName
FROM Member, TournPlayer
WHERE Member.memberID = TournPlayer.Member_memberID
GROUP BY memberID
HAVING COUNT(TournPlayer.Member_memberID) >= 2
ORDER BY memberID;

CALL Q4();



CREATE PROCEDURE Q5()
#What is the average salary of all employees?
SELECT AVG(employeeSalary)
FROM Employee;

CALL Q5();



CREATE PROCEDURE Q6()
#What are the names and salaries of our employees that make a salary over the average employee salary?
SELECT employeeFName, employeeLName, employeeSalary
FROM Employee
WHERE employeeSalary > (SELECT AVG(employeeSalary) FROM Employee);

CALL Q6();



CREATE PROCEDURE Q7()
#What are the names, dates, and player counts of the tournaments that have five or more players in attendance?
SELECT tournamentName, tournDate, COUNT(playerID) AS playerCount
FROM Tournament, TournPlayer
WHERE Tournament.tournamentID = TournPlayer.Tournament_tournamentID
GROUP BY tournamentName, tournDate
HAVING COUNT(playerID) >= 5;

CALL Q7();



CREATE PROCEDURE Q8()
#What are the names of tournaments that memberID '5' and '8' have entered?
SELECT DISTINCT tournamentName
FROM Tournament, TournPlayer
WHERE TournPlayer.Tournament_tournamentID = Tournament.tournamentID
AND TournPlayer.Member_memberID IN ('5', '8');

CALL Q8();



CREATE PROCEDURE Q9()
#What are the tournament names, tournament dates, and the count of players for tournaments that are scheduled to occur on or after 2023-01-01 and have at least 5 players registered?
SELECT tourn.tournamentName, tourn.tournDate, COUNT(tp.playerID) AS playerCount
FROM Tournament AS tourn
JOIN TournPlayer AS tp ON tourn.tournamentID = tp.Tournament_tournamentID
WHERE tourn.tournDate >= '2023-01-01'
GROUP BY tourn.tournamentName, tourn.tournDate
HAVING COUNT(tp.playerID) >= 5;

CALL Q9();



CREATE PROCEDURE Q10()
#What are the first and last names of members who have entered at least 2 tournaments, along with the count of distinct tournaments they have entered?
SELECT m.memberFName, m.memberLName, COUNT(DISTINCT tp.Tournament_tournamentID) AS tournamentsEntered
FROM Member AS m
LEFT JOIN TournPlayer AS tp ON m.memberID = tp.Member_memberID
GROUP BY m.memberID
HAVING tournamentsEntered >= 2
ORDER BY m.memberID;

CALL Q10();
