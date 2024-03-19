       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. cobtest.
environment division.
input-output section.
file-control.
       select outf assign to "outf.dat"
           organization is line sequential
           access is sequential.

data division.

file section.
fd outf.
01 fdat.
       02 fidnum pic 9(4).
       02 fcname.
           03 ffirstname pic x(15).
           03 flastname pic x(15).
       02 ftotal pic 99.

working-storage section.
01 num1 pic 9 value 0.
01 num2 pic 9 value 0.
01 total pic 99.

procedure division.
       display "enter a 1 digit number: " with no advancing
       accept num1
       display "enter a 1 digit number: " with no advancing
       accept num2
       call 'getsum' using num1, num2, total
       display num1 " + " num2 " = " total
       open extend outf.
           display "enter first and last name".
           accept ffirstname.
           accept flastname.
           display "enter id: " with no advancing.
           accept fidnum.
           move total to ftotal.
           write fdat
           end-write.
       close outf.
       stop run.
