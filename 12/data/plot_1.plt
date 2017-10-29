set term latex
set output "graf_1.tex"
set ylabel '\popi{U}{mV}'
set xlabel '\popi{\Delta\varphi_v}{\deg}'
plot [45:95] "data_1.dat" u 2:1 t 'namerané hodnoty'
show output
