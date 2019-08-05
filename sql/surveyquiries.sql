
select count(distinct memberid) 
from surveymemberanswerstbl SA;

select distinct memberid, membername 
from surveymemberanswerstbl SA
left join membertbl M on M.id = SA.memberid;

select distinct memberid, membername, 
(select count(surveyquestionid) 
from surveymemberanswerstbl 
where memberid = SA.memberid and SA.surveyid = 1) as questionsanswered
from surveymemberanswerstbl SA
left join membertbl M on M.id = SA.memberid;

select distinct memberid, membername
from surveymemberanswerstbl SA
left join membertbl M on M.id = SA.memberid
where 
(select count(surveyquestionid) 
from surveyquestiontbl) = 
(select count(surveyquestionid) 
from surveymemberanswerstbl 
where memberid = SA.memberid and and SA.surveyid = 1);
