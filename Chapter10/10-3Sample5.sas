filename tabfile 'C:\Users\dheeru\Desktop\MIS 532\tabdel.txt';
data temp;
   infile tabfile dsd dlm ='09'x;
run;
proc print data=temp;
   title 'Tab Delimted file';
run;
