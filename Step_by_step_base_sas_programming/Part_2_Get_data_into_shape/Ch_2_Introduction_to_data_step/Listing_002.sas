data saveit.weight_club;
/* 	informat IdNumber Name $20.; */
	input IdNumber Name $ Surname $ Team $ StartWeight EndWeight;
	datalines;
1023 David Shaw red 189 165
1049 Amelia Serrano yellow 145 124
1219 Alan Nance red 210 192
1246 Ravi Sinha yellow 194 177
1078 Ashley McKnight red 127 118
1221 Jim Brown yellow 220 .
;
run;

proc print data=saveit.weight_club;
run;