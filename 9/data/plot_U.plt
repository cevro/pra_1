set term latex
set output "graph_U.tex"
file = "data_U.dat"
set ylabel '\popi{U_k}{V}'
set xlabel '\popi{U_x}{V}'
set key left top
f(x) = A*x+B
fit f(x) file u 1:2 via A,B


plot file u 1:2:(.1) w xerrorbars t 'Namerané hodnoty', f(x) t 'Preložená závyslosť $U_k = "1.05"\cdot U_x + "0.21 V"$'

show output
