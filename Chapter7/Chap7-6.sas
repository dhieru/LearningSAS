libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data tempSales;
   set learn.sales;
   where Region = 'North' and Quantity < 60;
*if (Region = 'North' and Quantity < 60);
title "The sales data set";
proc print data = tempSales;
run;
