set term latex
set output "graph_P.tex"
file = "data_1.dat"
set ylabel '\popi{p^A}{mN\cdot s}'
set xlabel '\popi{p^B}{mN\cdot s}'
set key left
plot file u 9:10:(13.5):(11.4) i 0 t '$1\rightarrow2$ pre \uv{najvačšiu} pozíciu' with xyerrorbars,\
file u 9:10:(15.7):(15.4) i 1 t '$1\rightarrow2$ pre \uv{strednú} pozíciu' with xyerrorbars,\
file u 9:10:(4.7):(5.1) i 2 t '$1\rightarrow2$ pre \uv{najmenšiu} pozíciu' with xyerrorbars,\
file u 9:10:(4.9):(9.8) i 3 t '$2\rightarrow1$ pre \uv{najvačšiu} pozíciu' with xyerrorbars,\
file u 9:10:(2.3):(6.8) i 4 t '$2\rightarrow1$ pre \uv{strednú} pozíciu' with xyerrorbars,\
file u 9:10:(4.28):(11.47) i 5 t '$2\rightarrow1$ pre \uv{najmenšiu} pozíciu' with xyerrorbars,\
x t 'teoretická závyslosť'

show output
reset
set term latex
set output "graph_E.tex"

file = "data_1.dat"
set ylabel '\popi{E^A}{mJ}'
set xlabel '\popi{E^B}{mJ}'
set key left
plot file u 12:13:(8.0):(5.6) i 0 t '$1\rightarrow2$ pre \uv{najvačšiu} pozíciu' with xyerrorbars,\
file u 12:13:(6.4):(5.6) i 1 t '$1\rightarrow2$ pre \uv{strednú} pozíciu' with xyerrorbars,\
file u 12:13:(1.2):(1.3) i 2 t '$1\rightarrow2$ pre \uv{najmenšiu} pozíciu' with xyerrorbars,\
file u 12:13:(3.6):(7.0) i 3 t '$2\rightarrow1$ pre \uv{najvačšiu} pozíciu' with xyerrorbars,\
file u 12:13:(1.3):(3.2) i 4 t '$2\rightarrow1$ pre \uv{strednú} pozíciu' with xyerrorbars,\
file u 12:13:(1.3):(2.5) i 5 t '$2 \rightarrow 1$ pre \uv{najmenšiu} pozíciu' with xyerrorbars ,\
x t 'teoretická závyslosť'

show output

reset 
set output "graph_I.tex"

set key left

set ylabel '\popi{I}{N\cdot s}'
set xlabel '\popi{p}{N\cdot s}'
f(x)= A*x+B
fit f(x) "data_2.dat" u 3:($4+$5) via A,B

plot "data_2.dat" u 3:($4+$5):(0.05) t 'namerané dáta' w xerrorbars, x t 'teoretická závyslosť $y=x$', f(x) t 'linearny fit $\(1.43\pm0.07\)x -\(0.039\pm0.015\) $'
show output 


reset 

set term latex #size 4in,5in 
set output 'graph_C.tex'
set key outside horiz top center
set ylabel '\popi{\sigma_v}{-}'
set y2label '\popi{\Delta v}{m/s}'
set xlabel '\popi{v}{m/s}'
plot "data_3.dat" u 1:($2/$1) i 0 t 'rel. ch., č.1 ,\uv{V}' axis x1y1 , "" u 1:2 i 0 t 'abs. ch., č.1, \uv{V} ' axis x1y2 ,\
"" u 1:($2/$1) i 1 t 'rel.ch., č.1, \uv{S}' axis x1y1 , "" u 1:2 i 1 t 'abs. ch., č.1, \uv{S}' axis x1y2,\
"" u 1:($2/$1) i 2 t 'rel. ch., č.1, \uv{M}' axis x1y1 , "" u 1:2 i 2 t 'abs. ch., č.1, \uv{M}' axis x1y2,\
"" u 1:($2/$1) i 3 t 'rel. ch., č.2, \uv{V}' axis x1y1 , "" u 1:2 i 3 t 'abs. ch., č.2, \uv{V}' axis x1y2 ,\
"" u 1:($2/$1) i 4 t 'rel. ch., č.2, \uv{S}' axis x1y1 , "" u 1:2 i 4 t 'abs. ch., č.2, \uv{S}' axis x1y2,\
"" u 1:($2/$1) i 5 t 'rel. ch., č.2, \uv{M}' axis x1y1 , "" u 1:2 i 5 t 'abs. ch., č.2, \uv{M}' axis x1y2

show output
reset














