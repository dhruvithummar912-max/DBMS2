declare
    v_name employee.name%type;
    v_salary employee.basic_salary%type;

begin
    select name, basic_salary
    into v_name, v_salary
    from employee
    where empno = 10;

    dbms_output.put_line('employee name: ' || v_name);
    dbms_output.put_line('basic salary: ' || v_salary);

exception
    when no_data_found then
        dbms_output.put_line('employee not found');
end;
/