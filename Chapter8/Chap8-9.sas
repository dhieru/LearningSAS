data temperatures;
input Day $3. temp;
datalines;
Mon 70
Tue 72
Wed 74
Thu 76
Fri 77
Sat 78
Sun 85
;
title "Temperatures";
proc print data = temperatures;
run;


data tempartures2;
do Day = "Mod","Tue","Wed","Thu","Fri","Sat","Sun";
   input temp @;
   output;
end;
datalines;
70 72 74 76 77 84 85
;
proc print data = tempartures2;
run;

data temp1;
do Method = 'A','B','C' ;
   do n = 1 to 10;
      input speed @;
      output;
   end;
end;
datalines;
250 255 256 300 244 268 301 322 256 333
267 275 256 320 250 340 345 290 280 300
350 350 340 290 377 401 380 310 299 399
;
title "Method print";
proc print data = temp1;
run; 
