--------------------- PROCEDURE SCHEMA ===============================
CREATE OR REPLACE PROCEDURE procedure_name
    [ (param [, param, ...]) ] IS
    [local declare]
BEGIN
    program
[EXCEPTION]
END [procedure_name];

--------------------- CREATE PROCEDURE -----------------------------
CREATE OR REPLACE PROCEDURE test_proc(par1 NUMBER := 10, par2 OUT NUMBER, par3 IN OUT NUMBER)
IS
    t VARCHAR2(50) := 'test1';
    r NUMBER;
BEGIN
    t := 'test';
    r := 11;

    par2 := par1 * r;    -- значення out параметрів
    par3 := par2 + par1; -- значення out параметрів
EXCEPTION
    WHEN OTHERS THEN RAISE;
END;
--------------------- USE PRODEDURE ---------------------------------
DECLARE 
    p2 NUMBER;
    p3 NUMBER;
BEGIN
    test_proc(11, p2, p3); -- 2 out параметра
    dbms_output.put('p2 = '); -- значення out параметрів
    dbms_output.put_line(p2);
    dbms_output.put('p3 = ');-- значення out параметрів
    dbms_output.put_line(p3);
END
