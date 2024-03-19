       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. getsum.
environment division.

data division.
file section.
working-storage section.
linkage section.
01 lnum1 pic 9 value 0.
01 lnum2 pic 9 value 0.
01 ltotal pic 99 value 0.


procedure division using lnum1, lnum2, ltotal.
       compute ltotal = lnum1 + lnum2
exit program.
       
