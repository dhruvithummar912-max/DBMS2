---emp delete
ser serveroutput on ;
declare 

	eeid number(5):=&eeid;
begin
	delete from emp where eid=eeid;
commit;
 	dbms_output.put_line('delete the data');
end;
/