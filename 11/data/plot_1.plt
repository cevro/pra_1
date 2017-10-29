set term latex
set output "graf_1.tex"
file = "data_1.dat"
set key right top
set ylabel '\popi{I}{mA}'
set xlabel '\popi{f}{kHz}'
F0=218
Q=8.5
I=36.7
f(x) = I/((1+ Q*Q *((x/F0)-(F0/x))**2)**(.5))
fit f(x) file u 1:3 via I,Q,F0
plot [:] [:50] f(x) t 'fit $I = I(f)$' , file u 1:3 t 'Namerané hodnoty pre cievku bez jadra'
show output


set term latex
set output "graf_2.tex"
file = "data_1.dat"
F0_2=220
g(x) = I_2/(1+Q_2**2 *((x/F0_2)-(F0_2/x))**2)**(.5)
fit g(x) file u 4:6 via F0_2,I_2,Q_2
plot [:] [:15] g(x) t 'fit $I = I(f)$', file u 4:6 t 'Namerané hodnoty pre cievku s jadrom'
show output


set term latex
set output "graf_3.tex"
file = "data_1.dat"
F0=220

plot [:] [:50] g(x) t 'fit $I = I(f)$ pre cievku s jadrom', file u 4:6 t 'Namerané hodnoty pre cievku s jadrom' , f(x) t 'fit $I = I(f)$ pre cievku bez jadra' , file u 1:3 t 'Namerané hodnoty pre cievku bez jadra'
show output


