
set term latex

set output "graf_pohl_bez_".file.".tex"

set fit quiet

a=2.5
lamda=0.0001
omega=3
aplha=2
d=0

f(x) = a*exp(-lamda*x)*cos(omega*x+aplha)+d
fit [5:9] f(x) file  via lamda,omega,aplha,a 
plot [5:9] f(x) t '$x = 2.4\cdot e^{-0.033 t}\cdot sin \(3.6t-3.4\)$', file t 'namerané dáta'
print a
print lamda
print omega
print aplha
show output
