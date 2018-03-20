title1 "List Data for SASHELP.BASEBALL";

proc sort data=SASHELP.BASEBALL out=WORK.SORTTEMP;
	by Team;
run;

proc print data=WORK.SORTTEMP label;
	var Name Team Salary;
	by Team;
run;

proc delete data=work.SORTTEMP;
run;

title1;