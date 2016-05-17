Libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data hospdata;
set learn.hosp;
AgeJan1 = (yrdif(DoB,'1Jan2006'd,'Actual');
AgeToday = yrdif(DoB,Today(),'Actual');
title "Age Calculation";
proc print data = hospdata (obs = 10);
run;


/* Using intck function*/
Libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data hospd;
set learn.hosp;
tod = today();
AgeJan1 =  intck('Year','1Jan2006'd,DoB);
AgeToday = yrdif('Year',tod,DoB);
title "Age Calculation";
proc print data = hospd (obs = 10);
run;
