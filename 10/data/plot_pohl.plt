set term latex
set output "graph_pohl_poloh.5.tex"
set key bottom
set xlabel '\popi{t}{s}'
set ylabel '\popi{x}{mm}'

sigma=1.5
lamda=1
omega=3
f(x) = sigma*exp(-lamda*x)*sin(omega*x+alpha)
fit [2:5] f(x) "TP,5.txt" via sigma,lamda,omega,alpha
plot [2:5] "TP,5.txt" t 'namerané hodnoty' ,f(x) t '$x= 1.7 e^{-0.17 t} sin\(3.7 t + 6.7\)$'

show output
reset

set term latex
set output "graph_pohl_poloh1.0.tex"
set key bottom
set xlabel '\popi{t}{s}'
set ylabel '\popi{x}{mm}'

sigma=1.9
lamda=0.40
omega=3.7
f(x) = sigma*exp(-lamda*x)*sin(omega*x+alpha)
fit [2:5] f(x) "TP1.txt" via sigma,lamda,omega,alpha
plot [2:5] "TP1.txt" t 'namerané hodnoty' ,f(x) t '$x= 1.9 e^{-0.40 t} sin\(3.7 t - 16.3\)$'


show output
reset


set term latex
set output "graph_pohl_poloh1.5.tex"
set key bottom
set xlabel '\popi{t}{s}'
set ylabel '\popi{x}{mm}'

sigma=10
lamda=2
omega=3
f(x) = sigma*exp(-lamda*x)*sin(omega*x+alpha)
fit [1.2:3.5] f(x) "TP1,5.txt" via sigma,lamda,omega,alpha
plot [1.2:3.5] "TP1,5.txt" t 'namerané hodnoty' ,f(x) t '$x= 3.3 e^{-0.9 t} sin\(3.6 t - 4.9\)$'



show output
reset

set term latex
set output "graph_pohl_poloh.tex"
set key bottom right
set xlabel '\popi{t}{s}'
set ylabel '\popi{x}{mm}'
plot [0:4] "TP1,7.txt" t '$I="1.7 A"$' w line ,\
"TP1,8.txt" t '$I="1.8 A"$' w line ,\
"TP2,5.txt" t '$I="2.5 A"$' w line ,\
"TP2,6.txt" t '$I="2.6 A"$' w line ,\
"TP2.txt" t '$I="2 A"$' w line ,\
"TP3.txt" t '$I="3 A"$' w line 
#"TP,5.txt" t '$I="0.5 A"$' w line  "TP1,5.txt" t '$I="1.5 A"$' w line ,\ "TP1.txt" t '$I="1 A"$' w line ,\


show output


set term latex
set output "graph_pohl_pohyb.tex"
set key bottom right
set xlabel '\popi{t}{s}'
set ylabel '\popi{x}{mm}'


plot [0:4] "TPP0,5.txt"  t '$I="0.5 A"$' w line ,\
"TPP1,5.txt"  t '$I="1.5 A"$' w line ,\
"TPP1.txt"  t '$I="1 A"$' w line ,\
"TPP2,5.txt"  t '$I="2.5 A"$' w line ,\
"TPP2,8.txt"  t '$I="2.8 A"$' w line ,\
"TPP2.txt"  t '$I="2 A"$' w line ,\
"TPP3.txt" t '$I="3 A"$' w line 

show output

