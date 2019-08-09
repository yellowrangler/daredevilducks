
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


select surveyquestionid, questiontext, 
	(select count(memberid)  
	from surveymemberanswerstbl SQA
	where SQ.surveyquestionid = SQA.surveyquestionid  and 
	surveyquestionanswerresponce = "yes" and 
	surveyid = 1) as yesvotes, 
	(select count(memberid)  
	from surveymemberanswerstbl SQA
	where SQ.surveyquestionid = SQA.surveyquestionid  and 
	surveyquestionanswerresponce = "no" and 
	surveyid = 1) as novotes
from surveyquestiontbl SQ where surveyid = 1

select surveyid, memberid 
from surveyquestiontbl where surveyid = 1