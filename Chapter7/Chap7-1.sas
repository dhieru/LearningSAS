data school;
   input Age Quiz : $1. Midterm Final;
   if Age = 12 then Grade = 6;
   else if Age = 13 then Grade = 8;
   Select (Quiz) ;
      when ('A')  QuizNumeric = 95;
	  when ('B')  QuizNumeric = 85;
      when ('C')  QuizNumeric = 75;
      when ('D')  QuizNumeric = 70;
      when ('F')  QuizNumeric = 65;
      otherwise; 
   end;
   CourseGrade = Mean(0.2*QuizNumeric + 0.3*Midterm + 0.5*Midterm);
   datalines;
12 A 92 95
12 B 88 88
13 C 78 75
13 A 92 93
12 F 55 62
13 B 88 82
;
proc print data = school;
run;
