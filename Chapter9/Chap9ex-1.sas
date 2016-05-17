data four_dates;
infile 'C:\Users\dheeru\Desktop\Book Programmes and example2\dates.txt' truncover;
input @1 Subject $3.
@5 DOB mmddyy10.
@16 VisitDate mmddyy8.
@26 TwoDigit mmddyy8.
@34 LastDate date9.;
run;
title "Dates Learning";
proc print data = four_dates;
format DOB VisitDate date9.
TwoDigit LastDate mmddyy10.;
run; 
