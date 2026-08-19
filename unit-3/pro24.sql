declare
    v_salary number(10,2);

begin
    select basic_salary
    into v_salary
    from employee
    where age = 50;

    dbms_output.put_line('basic salary: ' || v_salary);

exception
    when no_data_found then
        dbms_output.put_line('employee with age 50 does not exist');

    when too_many_rows then
        dbms_output.put_line('more than one employee has age 50');

    when others then
        dbms_output.put_line('error occurred');
end;
/