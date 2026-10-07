create or replace trigger pro_42_sal
before insert on emp_sal
for each row
begin
    if :new.salary > 50000 then
        raise_application_error(-20010, 'You cant enter salary above 50000');
    end if;
end pro_42_sal;
/