set term latex
set output "graph_I.tex"
file = "data_I.dat"
set ylabel '\popi{I_k}{mA}'
set xlabel '\popi{I_x}{mA}'
set key left top
f(x) = A*x+B
fit f(x) file u 1:2 via A,B

plot file u 1:2 t 'Namerané hodnoty', f(x) t 'Preložená závyslosť $I_k = "0.95"\cdot I_x +"0.017 mA"$'

 show output
