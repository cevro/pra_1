set term latex
set output "graph_kalibracia_u.tex"
set key bottom
set xlabel '\popi{U}{V}'
set ylabel '\popi{\gamma}{Hz}'
A = 2.1
B = -0.35
f(x) = A*x + B;

fit f(x) "data_kal.dat" u 1:($2/60) via A,B
plot f(x) t 'linarny fit $\gamma = "\(2.1U-0.35V\) rad \cdot s^{-1} \cdot V"$', "data_kal.dat" u 1:($2/60) t 'namerané hodnoty'
show output
