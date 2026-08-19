declare
    v_name varchar2(20);
    v_salary number(10,2);

begin
    v_name := lower('&name');

    select basic_salary
    into v_salary
    from employee
    where lower(name) = v_name;

    dbms_output.put_line('employee name: ' || v_name);
    dbms_output.put_line('basic salary: ' || v_salary);

exception
    when no_data_found then
        dbms_output.put_line('employee does not exist');

    when others then
        dbms_output.put_line('error occurred');
end;
/