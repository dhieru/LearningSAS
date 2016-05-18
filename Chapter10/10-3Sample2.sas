libname learn 'C:\Users\dheeru\Desktop\MIS 532';
data learn.test_scores;
length ID $ 3 Name $ 15;
input ID $ Name $ Score1-Score3;
label ID = 'Student ID'
Score1 = 'Math Score'
Score2 = 'Science Score'
Score3 = 'English Score';
datalines;
1 Cody 90 95 98 
2 Preston 78 77 75
3 Russell 88 91 92
;
proc print data= learn.test_scores;
run;
