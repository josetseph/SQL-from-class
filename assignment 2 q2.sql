use company_9404119

select m.fname as 'manager name', s.fname as 'supervisor name',  dname as 'department name', max(e.salary) as 'maximum salary', min(e.salary) as 'minimum salary', count(e.ssn) as 'total employees'
from employee as m join employee as e on e.Dno = m.Dno, department, employee as s
where m.ssn = Mgr_Ssn AND s.ssn = m.Super_Ssn AND m.Dno = Dnumber
group by m.fname, s.fname, dname, m.salary, m.ssn