set serveroutput on
declare
    cursor c is
        select * from customer
        order by cname;

    r customer%rowtype;
begin
    open c;
    loop
        fetch c into r;
        exit when c%notfound;
        dbms_output.put_line(r.cid || ' ' || r.cname || ' ' || r.city);
    end loop;
    close c;
end;
/
