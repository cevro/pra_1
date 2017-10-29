reset
set term latex
set angles radians
set samples 10000
set ylabel '\popi{U/U_0}{-}'
set xlabel '\popi{\theta}{rad}'
file="data_dif.dat"
PI=3.14
lamda=0.0083
d=0.03
h=0.01
N=1
alpha(x) = PI*h*sin(x)/lamda
beta(x) = PI*d*sin(x)/lamda
s= 19
max = 288

set output "graf_dif.1.tex"
plot [-.2:.2] (sin(N*beta(x))*sin(alpha(x))/(alpha(x)*N*sin(beta(x))))**2 t 'Teoretická zavislosť', file i 0 u (atan(($1-s)/100)):($2/max) t 'Namerné hodnoty'
show output

N=2
s= 29
max = 255
set output "graf_dif.2.tex"
plot [-.2:.2] (sin(N*beta(x))*sin(alpha(x))/(alpha(x)*N*sin(beta(x))))**2 t 'Teoretická zavislosť', file i 1 u (atan(($1-s)/100)):($2/max) t 'Namerné hodnoty'
show output

N=5
s= 34
max = 675
set output "graf_dif.5.tex"
plot [-.2:.2] (sin(N*beta(x))*sin(alpha(x))/(alpha(x)*N*sin(beta(x))))**2 t 'Teoretická zavislosť', file i 2 u (atan(($1-s)/100)):($2/max) t 'Namerné hodnoty'
show output
