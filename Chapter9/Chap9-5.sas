libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data temp;
set learn.hosp (keep = AdmitDate);
Day = weekday(AdmitDate);
Month = month(AdmitDate);
Year = year(AdmitDate);
run;
proc format;
   value days  1 = 'Sun' 2 = 'Mon' 3 = 'Tue' 4 = 'Wed'
               5 = 'Thu' 6 = 'Fri' 7 = 'Sat';
   value months 1='Jan' 2='Feb' 3='Mar'
				4='Apr' 5='May' 6='Jun'
				7='Jul' 8='Aug' 9='Sep'
				10='Oct' 11='Nov' 12='Dec';
title "Frequencies for Hospital Admissions";
proc freq data=temp;
tables Day Month Year / nocum nopercent;
format Day days. Month months.;
run;
