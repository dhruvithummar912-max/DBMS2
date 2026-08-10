begin
    update emp
    set salary = salary + 1000
    where deptno = 200;

    if sql%notfound then
        dbms_output.put_line('no employee found');
    else
        dbms_output.put_line(sql%rowcount || ' employee updated');
    end if;

    commit;
end;
/