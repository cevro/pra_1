set term latex
set output file.".2.tex"
set ylabel '\popi{x}{mm}'
set xlabel '\popi{t}{s}'
plot file u 1:2
show output 
