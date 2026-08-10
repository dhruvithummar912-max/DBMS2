declare
    cursor c_emp is
        select eid, ename, salary
        from emp
        where deptno = 200;

    v_emp c_emp%rowtype;
begin
    open c_emp;

    if c_emp%isopen then
        dbms_output.put_line('cursor is open');
    end if;

    fetch c_emp into v_emp;

    if c_emp%notfound then
        dbms_output.put_line('no employee found');
    else
        update emp
        set salary = salary * 1.05
        where deptno = 200;

        insert into emp_update
        values(v_emp.eid, v_emp.ename,
               v_emp.salary, v_emp.salary * 1.05, sysdate);

        dbms_output.put_line('salary raised by 5%');
    end if;

    close c_emp;
end;
/