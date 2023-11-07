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
1. 
![How many clay courts does Ace Tennis Club have](https://github.com/noahnbleon/project1/assets/124447378/78c175e5-ad10-4ee0-9d8f-7803cdf9e20d)

2. 
![How many Pro Shop items are in stock (Excluding individual counts)](https://github.com/noahnbleon/project1/assets/124447378/913450e1-bc3e-4f64-9401-309b1e5a87c4)

3. 
![What are the names of the intermediate or advanced coaches who have availability on the weekends (2)](https://github.com/noahnbleon/project1/assets/124447378/fb8ddb17-e661-4326-b969-54e50aeb2398)

4. 
![What are the names of the tournament players who have competed in more than 1 tournament](https://github.com/noahnbleon/project1/assets/124447378/b5302974-80a7-42a5-aaca-c47b31d06a39)

5. 
![What's the average salary of all employees](https://github.com/noahnbleon/project1/assets/124447378/cde286e6-6a14-40ea-a4e5-f3b5d619c285)

6. 
![What are the names and salaries of our employees that make a salary over the average employee salary](https://github.com/noahnbleon/project1/assets/124447378/579eac26-0068-4e18-aa01-0349f3512afd)

7. 
![What are the names, dates, and player counts of the tournaments that have five or more players in attendance](https://github.com/noahnbleon/project1/assets/124447378/2e7b8ccb-c5d2-4761-adfc-ba5cb48c3a9d)
   
8. 
![image](https://github.com/noahnbleon/project1/assets/124447378/73e93e1f-b303-429a-a6e5-ac2f12c0c988)

9. 
![image](https://github.com/noahnbleon/project1/assets/124447378/e1230621-f040-4443-ad44-ac2f8b02da75)

10. 
![image](https://github.com/noahnbleon/project1/assets/124447378/d933d442-ce52-4831-9bb1-3cad713fcce8)



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
