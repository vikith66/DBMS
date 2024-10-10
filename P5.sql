CREATE TABLE Circle(
radius number(5,2),
area number(10,2));

DECLARE
	v_radius number(10);
	v_area number(10);
	v_pi constant number(5,2):=3.14159;
BEGIN
	FOR v_radius IN 3..7 LOOP
		v_area:=v_pi*power(v_radius,2);
		INSERT INTO Circle(radius,area) VALUES(v_radius,v_area);
		DBMS_OUTPUT.PUT_LINE('Radius: '||v_radius||' Area: '||v_area);
	END LOOP;
END;
/