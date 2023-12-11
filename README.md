# BotsCryOut-Database-Project
This repository contains all the files Dr.Casey would like for our database project and also a ReadMe file containing information on what I did in case anyone would also like to do the project as well.

## BotsCryOut-Database-Project-Instrustions
For this project we were instucted to make a normalized database for Bots Cry Out, which is a soon to be web application which post prayers people have created themselves or using AI. With each prayer there would be a prompt, body text, scripture, tag(themes of prayer), creator, ai_creator, likes, and saves. So with this information we had to design an ER diagram then from there create the database schema based off your ER diagram. Then we imported the prayer data from a prayer excel sheet we were given.

## How-to-Recreate-this-Project-Yourself
1. Take a look at the data you are given and start thinking about how you will normalize the information for a database. An important thing for me to think bout in the early workings of this project was the relationship types which were needed between certain information. Here is a link to the information I was given: https://docs.google.com/spreadsheets/d/1En_sPDlvI-Ok9H1s7_qOdKqW5FAH2sCtz-_EkfUmink/edit?usp=sharing

2. After looking and thinking about your data, next thing you should do is try to create an ER diagram of the database to solidify the design and make sure you won't have to worry about any data anamolies. I used DBDiagram to create my diagram, there was a little bit of syntax you had to learn to create your diagram and tables but it was very simple and intuitive. The advantage of using DBDiagram was that once you completed your diagram is that you are able to export your design as an SQL script which could be run in mySQL to create your schema. DBDiagram: https://dbdiagram.io/home

3. Last thing you have to do is just create the database. To do this you will have to create an SQL script yourself to create your schema or import the SQL script from DBDiagram and run it. After you have the schema and all the tables, what I did was go back into google sheets and make a new sheet for each table, not all connections for every prayer are made but there are multiple rows for examples of what the connections look like. Once you have created each table with all the intended information you can download it as a csv and then in mySQL use the Data Import Wizard to get the data into the table, just make sure column names on your sheets are the same as database when importing the data.

Hope you guys find this informational and helpful if you decide to try this project yourself!


