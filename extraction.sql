SELECT playername
FROM   players
ORDER  BY playername DESC; 
SELECT DISTINCT house
FROM   houses; 
SELECT coach
FROM   teams
WHERE  established >= 1960
       AND established <= 1970; 
SELECT Count(playername)
FROM   players
WHERE  playername LIKE '%Naor%'; 
select MAX(Num) from Teams;
select avg(age) from PLayers;
Select sum(Wins) from Teams where Team='Hapoel';
select sum(budget) from budget;
SELECT teams.team,
       teams.city,
       teams.wins,
       budget.budget
FROM   teams
       INNER JOIN budget
               ON budget.teamnum = teams.num; 
SELECT houses.house,
       houses.teamnum,
       teams.team,
       teams.city
FROM   houses
       INNER JOIN teams
               ON teams.num = houses.teamnum
ORDER  BY house ASC; 
SELECT teams.num,
       teams.team,
       teams.city,
       Count(players.playername)
FROM   teams
       INNER JOIN players
               ON teams.num = players.teamnum
GROUP  BY players.teamnum
ORDER  BY teams.num ASC; 
SELECT houses.house, players.playername
FROM   houses
       INNER JOIN players
               ON houses.teamnum = players.teamnum
ORDER  BY houses.house,
          players.playername; 
Select Team, sum(Wins) as TotalSum from Teams group by Team;
select Team , count(Team) as Total from Teams group by Team;
select City , count(Team) as TotalTeams from Teams group by City;
SELECT houses.house
FROM   houses
       INNER JOIN players
               ON houses.teamnum = players.teamnum
WHERE  players.playername = 'Adam Ariel'; 
SELECT Coach FROM Teams WHERE Coach LIKE '%a%';
