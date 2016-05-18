libname lData 'C:\Users\dheeru\Desktop\Book Programmes and example2\';
data temp;
set lData.bloodpressure;;
proc means data=temp;
class Gender;
var Age SBP DBP;
output out=class_summary
n= mean= median= / autoname;
run;
title "Listing of Blood ";
proc print data=class_summary noobs;
run;
