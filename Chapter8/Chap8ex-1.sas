data grades;
length  Gender $ 1
		Quiz $ 2
		AgeGrp $ 13;
infile 'C:\Users\dheeru\Desktop\Book Programmes and example2\grades.txt' missover;
input Age Gender Midterm Quiz FinalExam;
if missing(Age) then delete;
if Age le 39 then Agegrp = 'Younger group';
if Age le 39 then Grade = .4*Midterm + .6*FinalExam;
if Age gt 39 then Agegrp = 'Older group';
if Age gt 39 then Grade = (Midterm + FinalExam)/2;
run;
title "Listing of grades";
proc print data = grades noobs;
run;

data grades2;
length Gender $ 1
       Quiz $ 2
	   AgeGrp $ 13;
infile 'C:\Users\dheeru\Desktop\Book Programmes and example2\grades.txt' missover;
input Age Gender Midterm Quiz FinalExam;
if missing(Age) then delete;
if (Age < 39 ) then do 
   AgeGrp = 'Younger group';
   Grade = (0.4*MidTerm+0.6*Final);
end;
else if (Age > 39) then do
   AgeGrp = 'Older group';
   Grade = (MidTerm+Final)/2;
end;
run;
title "Listing of Grades";
proc print data = grades2;
run;
