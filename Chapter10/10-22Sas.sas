libname learn 'C:\Users\dheeru\Desktop\Book Programmes and example2\';
data height;
set learn.names_and_more;
tempheight1 = compress(Height,'','A.');
tempheight4 = compress(tempheight1,'','.');
tempheight = substr(Height,1,1);
inchheight = substr(Height,6,2);
tempheight = tempheight*12;
if(NOTDIGIT(inchheight)) then do inches2 = substr(inchheight,1,1);
totalinches =  tempheight+inches2;
end;
else totalinches = tempheight+inchheight;

run;
proc print data = height;
 var Name totalinches;
run;
