


fit f(x) "data.dat" i 2 u 1:(-$2) via A,B
set ylabel "Z 10^-4[m]"
set xlabel "F [N]"
plot f(x) t 'fit', "data.dat" i 2 u 1:(-$2) t 'zatazenie nosniku', "data.dat" i 3 u 1:(-$2) t 'odlahcenie nosniku'

show output

fit f(x) "data.dat" i 4 u 2:1 via A,B
set xlabel "uhol [°]"
set ylabel "M [nm]"
plot f(x) t 'fit', "data.dat" i 4 u 2:1 t 'zvacsovanie momentu M', "data.dat" i 5 u 2:1 t 'zmensovanie momentu M'
 
set term x11
f(x) = A*x + B
fit f(x) "data.dat" i 0 u 1:2 via A,B
set xlabel "T [MPa]"
set ylabel "relativne predlzenie 10^-4 [-]"
plot f(x) t 'fit', "data.dat" i 0 t 'zatazenie drotu', "data.dat" i 1 t 'odlahcenie drotu' 

show output 
