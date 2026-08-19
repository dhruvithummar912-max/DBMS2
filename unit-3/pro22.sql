declare
    v_name varchar2(20);
    v_result varchar2(20);

begin
    v_name := lower('&name');

    select r.result
    into v_result
    from student s, result r
    where s.rollno = r.rollno
    and lower(s.name) = v_name;

    dbms_output.put_line('student name: ' || v_name);
    dbms_output.put_line('result: ' || v_result);

exception
    when no_data_found then
        dbms_output.put_line('student does not exist');

    when others then
        dbms_output.put_line('error occurred');
end;
/
