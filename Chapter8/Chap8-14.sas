data squares1;
do n =1 to 10 while (squares < 100);
    squares = n**2;
	output;
end;
title "square print";
proc print data = squares1;
run;
