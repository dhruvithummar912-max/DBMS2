create or replace procedure pro_32(
    p_deptno in number,
    p_percent in number
)
is
begin
    update emp
    set salary = salary + (salary * p_percent / 100)
    where deptno = p_deptno;

    commit;

    dbms_output.put_line('salary updated successfully');
end;
/