CREATE OR REPLACE PROCEDURE pro36
IS
BEGIN
    UPDATE emp
    SET salary = salary + 1000
    WHERE eid = 1;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Record updated successfully');
END;
/