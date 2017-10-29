set term latex
set output "m_1.tex"
set xlabel '\popi{x}{-}'
set ylabel '\popi{y}{-}'
set zlabel '\popi{U}{V}'

set view 50,20
set ticslevel 0
splot 'm_1.dat' matrix nonuniform with lines t ''
show output

set output "m_2.tex"
splot 'm_2.dat' matrix nonuniform with lines t ''
show output

set output "g_1.tex"

set xlabel '\popi{s/D}{-}'
set ylabel '\popi{f\(s/D\)}{-}'

plot "data.dat" u 5:6 t 'namerané dáta'
show output
