set term latex
set output "graph_R.tex"
file = "data_R.dat"

set ylabel '\popi{R_k}{\Omega}'
set xlabel '\popi{R_x}{\Omega}'
set key left top
f(x) = A*x+B
fit f(x) file u 2:1 via A,B

plot file u 2:1 t 'Namerané hodnoty', f(x) t 'Preložená závyslosť $R_k = "1.00" \cdot R_x +"1.83 \Omega"$'
show output
