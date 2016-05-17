libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data tempSales;
   set learn.sales (keep = TotalSales Region);
   Select (Region);
     when ('North') Weight = 1.5;
	 when ('South') Weight = 1.7;
	 when ('East' , 'West') Weight = 2.0;
	 otherwise;
end;
proc print data = tempSales;
run;

