data ThreeDates;
input @1 Date1 mmddyy10. 
      @12 Date2 mmddyy10.  
      @23 Date3 date9.;
year12 = round (yrdif(Date1,Date2,'Actual'));
year23 = round (yrdif(Date2,Date3,'Actual')); 
datalines;
01/03/1950 01/03/1960 03Jan1970
05/15/2000 05/15/2002 15May2003
10/10/1998 11/12/2000 25Dec2005
;
title "Dates sheet";
proc print data = ThreeDates;
format Date1 MMDDYY10.
	   Date2 MMDDYY10.
	   Date3 MMDDYY10.;
run;
