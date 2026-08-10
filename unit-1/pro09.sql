begin
    for e in (
        select *
        from emp
        where gender = 'male'
        and deptname = 'hr'
    ) loop

        dbms_output.put_line(
            e.eid || ' ' || e.ename || ' ' ||
            e.deptno || ' ' || e.salary
        );

    end loop;
end;
/