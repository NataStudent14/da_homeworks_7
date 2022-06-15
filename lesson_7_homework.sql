--colab/jupyter: https://colab.research.google.com/drive/1j4XdGIU__NYPVpv74vQa9HUOAkxsgUez?usp=sharing

--task1  (lesson7)
-- sqlite3: Сделать тестовый проект с БД (sqlite3, project name: task1_7). В таблицу table1 записать 1000 строк с случайными значениями (3 колонки, тип int) от 0 до 1000.
-- Далее построить гистаграмму распределения этих трех колонко

create table table1 as 
SELECT cast(random()*1000 as int) as a, cast(random()*1000 as int) as b, cast(random()*1000 as int) as c
FROM generate_series(1,1000)


--task2  (lesson7)
-- oracle: https://leetcode.com/problems/duplicate-emails/

/* Write your PL/SQL query statement below */
select email
from (
    select email, count(*) as c
    from Person
    group by email  
) aa
where c >= 2

--task3  (lesson7)
-- oracle: https://leetcode.com/problems/employees-earning-more-than-their-managers/

select e.Name as Employee
from Employee e
where e.Salary >
(select Salary from Employee e1 where e1.Id = e.ManagerId)


--task4  (lesson7)
-- oracle: https://leetcode.com/problems/rank-scores/

/* Write your PL/SQL query statement below */

select 
score,
dense_rank() over (order by score desc) as rank
from Scores


--task5  (lesson7)
-- oracle: https://leetcode.com/problems/combine-two-tables/

select 
FirstName, 
LastName, 
City, State
from Person p
left join Address a
on p.PersonId = a.PersonId