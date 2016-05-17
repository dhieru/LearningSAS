data test;
input Score1-Score3;
Subj +1;
/* add your line(s) here */
datalines;
90 88 92
75 76 88
88 82 91
72 68 70
;
title "Test scores";
proc print data = test;
run;
