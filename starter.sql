SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    v_studentid     NUMBER(5);
    v_studentname   VARCHAR2(20);
    v_departmentid  NUMBER(5);
BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor
        INTO v_studentid, v_studentname, v_departmentid;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'StudentID: ' || v_studentid ||
            ' StudentName: ' || v_studentname ||
            ' DepartmentID: ' || v_departmentid
        );
    END LOOP;

    CLOSE student_cursor;
END;
/
