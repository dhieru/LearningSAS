data _null_;
   length state $ 15;
   input state $ morning_copies evening_copies year;
   put state morning_copies evening_copies year;
   datalines;
Massachusetts 798.4 984.7 1999
Massachusetts 834.2 793.6 1998
Massachusetts 750.3 .     1997
Alabama       .     698.4 1999
Alabama       463.8 522.0 1998
Alabama       583.2 234.9 1997
Alabama       .     339.6 1996
;
