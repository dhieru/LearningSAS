libname learn 'C:\Users\dheeru\Desktop\Book Programmes and example2\';
data temp;
set learn.bloodpressure;
if Gender = 'F' and (SBP gt 138 or DBP gt 88)
then Hypertensive = 'Yes';
else Hypertensive='No';
if Gender = 'M' and
(SBP gt 140 or DBP gt 90)
then Hypertensive = 'Yes';
else Hypertensive = 'No';
run;
proc print data = temp;
var 
run;
