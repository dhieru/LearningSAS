data vitals;
input ID
	  Age
	  Pulse
	  SBP
	  DBP;
label SBP = "Systolic Blood Pressure"
	  DBP = "Diastolic Blood Pressure";
datalines;
001 23 68 120 80
002 55 72 188 96
003 78 82 200 100
004 18 58 110 70
005 43 52 120 82
006 37 74 150 98
007 . 82 140 100
;
data newvitals;
set work.vitals;
if Age < 50 then do;
	if (Pulse < 70 ) then  PulseGroup = 'Low ';
	else PulseGroup = 'High';
	if SBP < 130 then SBPGroup = 'Low ';
   	else SBPGroup = 'High';
end;
else do ;
    if(Pulse < 74 ) then  PulseGroup = 'Low ';
	else PulseGroup = 'High';
	if SBP < 140 then SBPGroup = 'Low ';
   	else SBPGroup = 'High';
end;
title "BLood Pressures";
proc print data = newvitals;
run;
