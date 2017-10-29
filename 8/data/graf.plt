set term latex
set ylabel '\popi{\omega}{rad \cdot s^{-2}}'
set xlabel '\popi{t}{s}'
set output 'graph.tex'
plot [5:10] "graf.dat" t 'namerná dáta'

show output

reset 
set term latex
set ylabel '\popi{\omega}{rad \cdot s^{-2}}'
set xlabel '\popi{t}{s}'
set output 'precese.tex'
plot [:6] "precese.txt" t 'namerná dáta'

show output
