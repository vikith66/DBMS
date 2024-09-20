CREATE TABLE EMPSAL(
Empno NUMBER(5),
Empname VARCHAR2(20),
Sal NUMBER(10),
HRA NUMBER(5),
DA NUMBER(5),
Gross_Salary NUMBER(5), 
PF NUMBER(5),
Net_Salary NUMBER(5));

SET SERVEROUTPUT ON
DECLARE
	emp_no emp.empno%type:=&emp_no;
	emp_name emp.ename%type;
	v_sal emp.sal%type;
	v_hra empsal.hra%type;
  	v_da empsal.da%type; 
 	v_grossal empsal.gross_salary%type;
  	v_pf empsal.pf%type;
  	v_netsal empsal.net_salary%type;
BEGIN
	SELECT ename,sal INTO emp_name,v_sal FROM EMP WHERE empno=emp_no;
	v_hra:=0.5*v_sal;
    	v_da:=0.2*v_sal;
    	v_pf:=0.12*v_sal;
    	v_grossal:=v_sal+v_hra+v_da;
    	v_netsal:=v_grossal-v_pf;
    	INSERT INTO empsal(empno,empname,sal,hra,da,gross_salary,pf,net_salary) VALUES(emp_no,emp_name,v_sal,v_hra,v_da,v_grossal,v_pf,v_netsal); 
END;
/