libname lData 'C:\Users\dheeru\Desktop\Book Programmes and example2\';
data temp;
set lData.college;
proc print data = temp;
run;
