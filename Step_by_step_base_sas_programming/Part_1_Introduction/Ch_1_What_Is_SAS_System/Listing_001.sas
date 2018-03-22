data weight_club;
	input IdNumber 1-4 Name $ Surname $ Team $ StartWeight EndWeight;
	Loss = StartWeight-EndWeight;
	datalines;
1023 David Shaw red 189 165
1049 Amelia Serrano yellow 145 124
1219 Alan Nance red 210 192
1246 Ravi Sinha yellow 194 177
1078 Ashley McKnight red 127 118
;
run;

options linesize=80 pagesize=60 pageno=1 nodate;
proc print data=weight_club;
title ’Health Club Data’;
run;

options linesize=80 pagesize=60 pageno=1 nodate;
proc tabulate data=weight_club;
class team;
var StartWeight EndWeight Loss;
table team, mean*(StartWeight EndWeight Loss);
title ’Mean Starting Weight, Ending Weight,’;
title2 ’and Weight Loss’;
run;