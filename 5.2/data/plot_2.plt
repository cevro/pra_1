set term latex
set output "graph_2.tex"

f(x) = A*x + B
#g(x) = C*x + D

set ylabel '\popi{\kappa}{-}'
set xlabel '\popi{t}{s}'

fit f(x) "data_2.dat" i 0 u 1:8 via A,B
#fit g(x) "data_2.dat" i 1 u 1:2 via C,D

#plot #f(x) t 'linenárny fit pre $t<"200 ms"$'#, g(x) t 'linenárny fit pre $t>"200 ms"$', "data_2.dat" i 0 u 1:2 t 'namerané hodnoty pre $t<"200 ms"$', "" i 1 u 1:2 t 'namerané hodnoty pre $t>"200 ms"$'
plot "data_2.dat" u 1:8:9 w yerrorbars t 'vypočítané hodnoty $\kappa$', f(x) t 'fit $f\(t\) = \(-0.15\pm0.10\)t + \(1.335\pm0.021\)$'

show output
