libname learn 'C:\Users\dheeru\Desktop\MIS 532';
data _null_;
set learn.test_scores;
if score ge 95 or score2 ge 95 or score3 ge 95 then
   put id = score1=score2=score3=;
run;


filename ch3prob "C:\Users\dheeru\Desktop\Book Programmes and example2\mydata.csv";
data demo;
   infile ch3prob dsd;
   input Gender $ Age Height Weight;
run;
proc print data=demo;
   title 'Reading CSV file';
run;
