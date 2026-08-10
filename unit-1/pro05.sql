--convert tempture

set serveroutput on;

declare
    celsius     NUMBER;
    fahrenheit  NUMBER;
begin
    celsius := &celsius;

    fahrenheit := (celsius * 9/5) + 32;

   dbms_output.put_line('Temperature in Celsius:'||celsius||'C');
   dbms_output.put_line('Temperature in Fahrenheit:'||fahrenheit||'F');
end;
/
