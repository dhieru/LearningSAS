data table;
   do n=1 to 10;
      Square = n*n;
	  SquareRoot = sqrt(n);
	  output;
   end;
run;
title "Sqaures and sum of squares";
proc print data = table noobs;
run;


data equation;
do X = -10 to 10 by .01;
Y = 2*X**3 - 5*X**2 + 15*X -8;
output;
end;
run;
symbol value=none interpol=sm width=2;
title "Plot of Y versus X";
proc gplot data=equation;
plot Y * X;
run;

data easyway;
do Group = 'Placebo','Active';
do Subj = 1 to 5;
input Score ;
output;
end;
end;
datalines;
250 222 230 210 199
166 183 123 129 234
;
proc print data = easyway;
run;
