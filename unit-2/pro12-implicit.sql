declare
    v_count number;
begin
    select count(*) into v_count
    from emp
    where deptno = 200;

    if v_count = 0 then
        dbms_output.put_line('no employee found');
    else
        update emp
        set salary = salary * 1.05
        where deptno = 200;

        dbms_output.put_line('salary raised by 5%');

        insert into emp_update
        select eid, ename, salary/1.05, salary, sysdate
        from emp
        where deptno = 200;

        if sql%isopen = false then
            dbms_output.put_line('implicit cursor is closed');
        end if;

        if sql%notfound then
            dbms_output.put_line('no record updated');
        end if;
    end if;

    commit;
end;
/