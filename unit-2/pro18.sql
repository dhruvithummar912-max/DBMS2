set serveroutput on
begin
    for r in (select * from customer where cname like 'r%')
    loop
        dbms_output.put_line(r.cid || ' ' || r.cname || ' ' || r.city);
    end loop;
end;
/
