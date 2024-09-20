SET SERVEROUTPUT ON
DECLARE
	input_string varchar2(100);
	reversed_string varchar2(100);
BEGIN
	input_string:='&input_string';
	FOR i in REVERSE 1 ..LENGTH(input_string) LOOP
		reversed_string:=reversed_string||SUBSTR(input_string,i,1);
	END LOOP;
	IF input_string=reversed_string THEN
		DBMS_OUTPUT.PUT_LINE(input_string||' is a palindrome');
	ELSE
		DBMS_OUTPUT.PUT_LINE(input_string||' is not a palindrome');
	END IF;
END;
/