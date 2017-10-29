set term latex
set output "graf_tlmeny_V_1.tex"
file = "tlumeny_kmit_V.txt"
set ylabel '\popi{x}{mm}'
set xlabel '\popi{t}{s}'
a=10e6
lamda=0.5
omega=20
aplha=3
d=-15

f(x) = a*exp(-lamda*x)*cos(omega*x+aplha)+d
fit f(x) file i 0 via a,aplha,lamda,omega
plot f(x) t '$x= f(t) $', file i 0 t 'namerané dáta'

show output




set term latex
set output "graf_tlmeny_V_2.tex"
set ylabel '\popi{x}{mm}'
set xlabel '\popi{t}{s}'
file = "tlumeny_kmit_V.txt"
a=10e10
lamda=0.5
omega=20
aplha=3
d=-15

f(x) = a*exp(-lamda*x)*cos(omega*x+aplha)+d
fit f(x) file i 1 via a,aplha,lamda,omega
plot f(x) t '$x= f(t) $', file i 1 t 'namerané dáta'

show output



