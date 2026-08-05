set serveroutput on
declare
	n number := &n;
	
begin
	for i IN 1..n loop
dbms_output.put_line(i);

end loop;
end;
/