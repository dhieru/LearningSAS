options YEARCUTOFF = 1920;
data Dates1910_2006;
input date mmddyy8.;
datalines;
01/01/11
02/23/05
03/15/15
05/09/06
;
title "2 digit range";
proc print data = Dates1910_2006;
format date date9.;
run; 
