       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. cobtest.
environment division.
input-output section.
data division.
file section.
working-storage section.
01 linked-list.
   02 lnode occurs 25 times.
      03 lnext pic 99 value 2.
      03 ldata pic 9999 value 1.
      03 locc pic 9 value 0.

procedure division.
       display linked-list
       stop run.
