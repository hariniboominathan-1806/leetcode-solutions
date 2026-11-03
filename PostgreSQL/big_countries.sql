--leetcode 595 big countries

--world table
create table world(
    name varchar(100),
    continent varchar(100),
    area int,
    population int,
    gdp bigint
);

--insert
insert into world(name,continent,area,population,gdp) values ('afghanistan','asia',652230,25500100,20343000000),('albania','europe',28748,2831741,12960000000),('algeria','africa',2381741,37100000,188681000000),('andorra','europe',468,78115,3712000000),('angola','africa',1246700,20609294,10090000000);

--query
select world.name,world.population,world.area from world where area>=3000000 or population>=25000000;