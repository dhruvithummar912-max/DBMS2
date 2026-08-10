--insert data
set serveroutput on
 declare
          xEID  NUMBER(5):=&xEID; 
 	xENAME  CHAR(10):='&xENAME';
 	xDEPTNO NUMBER(5):=&xDEPTNO;
 	xSALARY NUMBER(10):=&xSALARY;

begin
         delete from emp where eid=eno;
         dbms_output.put_line('insert data')
end;
/
