data set_one;
input FirstName $ LastName $ id dob mmddyy10.;
format dob mmddyy10.;
cards;
john smith 003 10/20/1982
steve clapham 005 08/20/1955
krishna patel 001 09/20/1960
priaya vaghre 009 03/15/1959
zhu zhang 012 01/10/1954
Akanksha Rawat 006 01/10/1975
;
run;
proc sort;
by id;

data set_two;
input id emplydate mmddyy10. monthly_salary;
format emplydate mmddyy10.;
cards;
001 09/10/1970 4500
005 01/10/1975 3500
003 05/10/1980 5000
009 09/10/1990 4000
006 10/15/2005 3000
;
run;

Proc sort data = set_one;
By id;

Proc sort data=set_two;
By id;

data merged_data missing_data;
merge set_one (in = datainfirst)
set_two (in = datainsecond);
by id;
if (datainfirst and datainsecond) then output merged_data;
else output missing_data;
run;
proc print data= merged_data;
run;
proc print data= missing_data;
run;
data temp;
set merged_data;
numyrwork =  yrdif(emplydate,date(), 'actual');
age =  yrdif(dob,date(),'actual');
bonus = numyrwork*.0325*12*monthly_salary + .0003*age;
if( numyrwork > 5) then 
proc print data=temp;
var numyrwork age bonus;
run;
