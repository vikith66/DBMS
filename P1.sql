SET SERVEROUTPUT ON
DECLARE
	num NUMBER:=&num;
	digit NUMBER;
	sum_of_digits NUMBER:=0;
BEGIN
	WHILE num>0 LOOP
		digit:=MOD(num,10);
		sum_of_digits:=sum_of_digits+digit;
		num:=trunc(num/10);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('Sum of digits: '||sum_of_digits);
END;
/