set serveroutput on
begin
    update emp
    set salary = salary * 1.10
    where deptno = 100;

    if sql%rowcount > 0 then
        dbms_output.put_line(sql%rowcount || ' employee(s) updated');
    else
        dbms_output.put_line('no employee found');
    end if;
end;
/
