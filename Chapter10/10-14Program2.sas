proc sort data=set_one;
by id;
run;

proc sort data=set_two;
by id;
run;

data set_three;
merge set_one set_two;
by id;
year_est_sal=12*monthly_salary;
if INTCK('month',month,today())<61 and not missing(month) then output;
proc print data= set_three;
run;

proc means data=set_three mean;
class id;
var year_est_sal;
run;
