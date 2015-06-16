
use ukrprom

scan
 repl fio1 with allt(subs(fio,1,at(" ",fio)))
 ff2=allt(subs(fio,at(" ",fio)))
 repl fio2 with allt(subs(ff2,1,at(" ",ff2)))
 ff3=allt(subs(ff2,at(" ",ff2)))
 repl fio3 with ff3
 
 
endscan
