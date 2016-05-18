libname datatemp "C:\Users\dheeru\Desktop\Book Programmes and example2\";
proc report data=datatemp.bloodpressure nowd;
column Gender SBP DBP Hypertensive;
define Gender / Group width=6;
define SBP / display width=5;
define DBP / display width=5;
define Hypertensive / computed "Hypertensive?" width=13;
compute Hypertensive / character length=3;
if Gender = 'F' and (SBP gt 138 or DBP gt 88)
then Hypertensive = 'Yes';
else Hypertensive='No';
if Gender = 'M' and
(SBP gt 140 or DBP gt 90)
then Hypertensive = 'Yes';
else Hypertensive = 'No';
endcomp;
run;
quit;
