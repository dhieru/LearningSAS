libname learn "C:\Users\dheeru\Desktop\Book Programmes and example2\";
data tempBicycle;
   set learn.bicycles;
where Model eq "Road Bike" and UnitCost gt 2500 or
Model eq "Hybrid" and UnitCost gt 660;
proc print data = tempBicycle;
run;
