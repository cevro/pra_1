set term latex 
set output "graph_nutene.tex"
set xlabel '\popi{\gamma}{Hz}'
set ylabel '\popi{B}{mm}'
O1=21
O2=21
f(x) = F1/(M1*sqrt((O1**2-x**2)**2 + 4*S1**2*x**2))
g(x) = F2/(M2*sqrt((O2**2-x**2)**2 + 4*S2**2*x**2))
fit f(x) "data_3.dat" i 1 u ($3*2.09425-0.349603):($2-$1) via O1,S1,F1,M1
#fit g(x) "data_3.dat" i 0 u ($3*2.09425-0.349603):($2-$1) via O2,S2,F2,M2
plot "data_3.dat" i 0  u ($3*2.09425-0.349603):($2-$1) t 'dáta pre veľké závažie', "" i 1 u ($3*2.09425-0.349603):($2-$1) t 'dáta pre stredné závažie',f(x) t 'fit $B_{\(\gamma\)} = \frac{1.55}{4.16\sqrt{\(12.23^2 - \gamma^2\)^2+4\cdot 0.5^2 \gamma^2 } }$'

show output
