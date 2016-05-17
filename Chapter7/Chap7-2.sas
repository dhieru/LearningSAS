libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data temp;
   set learn.Hosp;
   if (Subject = 5 or Subject = 100 or Subject = 150 or Subject = 200);
proc print data = temp noobs;
run;

/* This using IN Operator*/

libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data temp;
   set learn.Hosp;
   where Subject In (5,100,150,200);
proc print data = temp noobs;
run;

/* The sales data set using IN operator */
libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data temp;
   set learn.sales;
   where EmpID In ('9888', '0177');
proc print data = temp noobs;
run;

/* Using IN operator */
libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data temp;
   set learn.sales;
   if (EmpID = '9888' or EmpID = '0177');
proc print data = temp noobs;
run;
