SET SERVEROUTPUT ON;

declare
    feet   NUMBER;
    cm     NUMBER;
    inch   NUMBER;
    meter  NUMBER;
begin
    feet := &feet;

    cm := feet * 30.48;
    inch := feet * 12;
    meter := feet * 0.3048;

    DBMS_OUTPUT.PUT_LINE('Measurement in Feet:'|| feet);
    DBMS_OUTPUT.PUT_LINE('Centimeters:'|| cm);
    DBMS_OUTPUT.PUT_LINE('Inches:'|| inch);
    DBMS_OUTPUT.PUT_LINE('Meters:'|| meter);
end;
/