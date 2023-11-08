# Team 1 MIST4610 Group Project 1

## Database information

#### Name:
cs_g1p1

#### Team Members:

Noah Leon [@noahnbleon](https://github.com/noahnbleon)\
Lenny Keenan [@leonardkeenan](https://github.com/LeonardKeenan)\
Katie Gelderman [@katiegelderman](https://github.com/Katiegelderman)


## Project
#### Instruction:
For our project, we were to construct a database and query it sufficiently so that we could demonstrate our knowledge of MySQL. We chose to create a database for a tennis club.

#### Client:
ChatGPT 4 was the client/owner of the tennis club for whom we built our database. To see our prompt and the response, please visit this link: https://chat.openai.com/share/12733a36-8c47-4f03-92ab-ea641e4d3f43.

#### Overview:
After consulting our client, we spent some time brainstorming and created an overview of the database:

![Tennis Club Database Overview](https://github.com/noahnbleon/project1/assets/124447378/4fed0a91-73b3-47a5-a6dc-7a502503c7ab)


#### Tables:
![BILLING TABLE](https://github.com/noahnbleon/project1/assets/124447378/6d4c2512-bc28-412f-9a4a-76e596ded1df)

![BOOKING TABLE](https://github.com/noahnbleon/project1/assets/124447378/38c6a326-e758-4056-85eb-9df0027eb2c1)

![COACH TABLE](https://github.com/noahnbleon/project1/assets/124447378/3a7449c8-9ace-43a6-bbef-66ba2f9a7a22)

![COURT TABLE](https://github.com/noahnbleon/project1/assets/124447378/1323591a-ee06-4e91-bbb7-c7d7b363fd12)

![DEPARTMENT TABLE](https://github.com/noahnbleon/project1/assets/124447378/6578c9d9-c24e-4107-8eb0-cda09e50fa72)

![EMPLOYEE TABLE](https://github.com/noahnbleon/project1/assets/124447378/41b5d137-545e-425f-900c-42a23f3686c4)

![MEMBER TABLE](https://github.com/noahnbleon/project1/assets/124447378/0fd45060-8c72-4c2e-942c-29b55bf38a4e)

![PROSHOP TABLE](https://github.com/noahnbleon/project1/assets/124447378/0ad23643-68c1-46e6-a625-9609c022ce5f)

![PROSHOPITEM TABLE](https://github.com/noahnbleon/project1/assets/124447378/25f44378-7172-4be6-8b7d-7587baa7a6ce)

![TENNISCLUB TABLE](https://github.com/noahnbleon/project1/assets/124447378/efa03ea1-371d-4ba0-916a-fa219840829d)

![TOURNAMENT TABLE](https://github.com/noahnbleon/project1/assets/124447378/60cdcd6d-6b4e-4437-8e24-e51337ef2ed8)

![TOURNPLAYER TABLE](https://github.com/noahnbleon/project1/assets/124447378/d89a1200-07cc-4e30-9a86-00a0e8ce9b9e)

![TRAININGSESSION TABLE](https://github.com/noahnbleon/project1/assets/124447378/9ee5bdff-fec1-4da8-97f1-4f0a097dec24)

#### Queries:

<img width="488" alt="Screenshot 2023-11-07 175820" src="https://github.com/noahnbleon/project1/assets/148257298/89d87bbe-c073-4592-8fa3-864a52cabd7b">

1. Our first query allows us to see how many courts are one of the three possible court types. As the club grows, this might become useful for scheduling or planning certain types of tennis events, as the different court types offer different pros and cons. \
![How many courts are type aType](https://github.com/noahnbleon/project1/assets/124447378/b7b4b721-b7ba-4ad6-9d07-039c0022c988)

2. Our second query allows the user to assess how many different items the shop has in stock. As management tracks transaction patterns among the Pro Shop customers, it could become important to narrow or widen the available options at the store depending on sales trends. \
![How many Pro Shop items are in stock (Excluding individual counts)](https://github.com/noahnbleon/project1/assets/124447378/913450e1-bc3e-4f64-9401-309b1e5a87c4)

3. Our third query allows the user an element of customer service. In this way, the database could be used for assisting customers in scheduling their training sessions. \
![What are the names of the intermediate or advanced coaches who have availability on the weekends (2)](https://github.com/noahnbleon/project1/assets/124447378/fb8ddb17-e661-4326-b969-54e50aeb2398)

4. Our fourth query allows the user to assess who is active in our tournaments. This query and others like it could help management gauge participation. \
![What are the names of the tournament players who have competed in more than 1 tournament](https://github.com/noahnbleon/project1/assets/124447378/b5302974-80a7-42a5-aaca-c47b31d06a39)

5. Our fifth query allows the user to gauge the average salary of all employees. This could be a useful tool that allows management to make choices based on the data returned. \
![What's the average salary of all employees](https://github.com/noahnbleon/project1/assets/124447378/cde286e6-6a14-40ea-a4e5-f3b5d619c285)

6. Our sixth query returns information for the employees currently making a salary above the average employee salary, which could be useful in financial planning. \
![What are the names and salaries of our employees that make a salary over the average employee salary](https://github.com/noahnbleon/project1/assets/124447378/579eac26-0068-4e18-aa01-0349f3512afd)

7. Our seventh query allows the user to track attendance trends to gauge which tournaments are more successful in turnout, and might be used to make assumptions regarding why (ie: alluring name; good time of year or good weather; etc). \
![What are the names, dates, and player counts of the tournaments that have five or more players in attendance](https://github.com/noahnbleon/project1/assets/124447378/2e7b8ccb-c5d2-4761-adfc-ba5cb48c3a9d)
   
8. Our eighth query allows for cross-checking a member's attendance in a tournament with another member's attendance in the same tournament, to see if there might be any trends in tournament attendance. (For instance, when you run this query with '1' and '4', almost every tournament comes back- perhaps one's attendance impacts the other's desire to come!) \
![What are the names of tournaments that memberID '5' and '8' have entered (Both must be in attendance for a tournamentName to be returned)](https://github.com/noahnbleon/project1/assets/124447378/1bb4a9dd-1162-4d1a-91a3-4c9d87ba68d6)


9. Our ninth query allows the user to check tournament attendance in another novel way to analyze attendance trends over different times. \
![What are the tournament names, tournament dates, and the count of players for tournaments that are scheduled to occur on or after 2022-05-05 and have at least 5 players registered](https://github.com/noahnbleon/project1/assets/124447378/0953c0e4-86cf-45ea-9487-d85703d1dd71)


10. The best for last, our tenth query, is yet another tournament attendance query. This time, we can see the frequency of attendance for all members that have attended at least two tournaments. (The Tournament Analysts at the Ace Tennis Club are rolling in data. They could utilize this data to incentivize attendance; perhaps the member with the most entries in a year might win a prize!)
![What are the first and last names of members who have entered at least 2 tournaments, along with the count of tournaments they have entered](https://github.com/noahnbleon/project1/assets/124447378/6c23c268-6f91-44bc-8b70-79cb31ec28cd)



#### Additional information:
Each query we've crafted is stored in the database using procedures.

A log of all procedures:

*CALL Q1countTypesOfCourtsIn(aType);\
CALL Q2();\
CALL Q3();\
CALL Q4();\
CALL Q5();\
CALL Q6();\
CALL Q7();\
CALL Q8();\
CALL Q9();\
CALL Q10();

*aType can be 'clay', 'hard', or 'grass'
