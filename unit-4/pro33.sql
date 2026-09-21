create or replace procedure pro_33(
    p_eid in number,
    p_ename out varchar2
)
is
begin
    select ename
    into p_ename
    from emp
    where eid = p_eid;

exception
    when no_data_found then
        p_ename := 'employee not found';
    when others then
        p_ename := 'error occurred';
end;
/