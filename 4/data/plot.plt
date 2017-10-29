set term latex
set output "graph_1.tex"

set ylabel '\popi{l}{cm}'
set xlabel '\popi{t}{s}'
A1 = A2 = 50
T1 = T2 = 500 
S1 = 60
S2 = 80
sigma1 = sigma2 = 6*pi/5
delta1 = 0.000482449
delta2 = 0.000482449
#FIT_LIMIT = 1e-8
f(x) = A1*exp(-delta1*x)*sin((2*pi*x/T1)+ sigma1) + S1
g(x) = A2*exp(-delta2*x)*sin((2*pi*x/T2)+ sigma2) + S2
fit  [640:2280] [] f(x) "data.dat" u 1:2:(1) via S1,A1,delta1,T1,sigma1
fit  [2380:4000] [] g(x) "data.dat" u 1:2:(1) via S2,A2,T2,sigma2
plot "data.dat" u 1:2:(1) w yerrorbars t 'Namerané dáta: zývylosť polohy od času', f(x)*(x>640 )*(x<2280) t 'Fit v prvej polohe', g(x)*(x>2380) t 'Fit v druhej polohe', S1 t 'S^1', S2 t 'S^2'
show output


set term latex
set output "graph_2.tex"
plot "data.dat" u 1:2:(1) w yerrorbars t 'Namerané dáta: zývylosť polohy od času'
show output


set term latex
set output "graph_3.tex"

plot  [640:2280] f(x)*(x>640 )*(x<2280) t 'Fit v prvej polohe',  "data.dat" u 1:2:(1) w yerrorbars t 'Namerané dáta: zývylosť polohy od času'

show output

set term latex
set output "graph_4.tex"

plot [2380:] g(x)*(x>2380) t 'Fit v druhej polohe',  "data.dat" u 1:2:(1) w yerrorbars t 'Namerané dáta:d zývylosť polohy od času'

show output
