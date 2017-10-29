set term latex
set output "hlinik_1.tex"
file = "hlinik_1.dat"
set ylabel '\popi{t}{\C}'
set xlabel '\popi{t}{s}'
set key right center
#FIT_LIMIT = 1e-8
f(x) = A
g(x) = B
fit [120:160]  f(x) file u 1:2 via A
fit [0:40] g(x) file u 1:2 via B

plot file u 1:2 t 'namerané dáta', f(x) t 'teplota \uv{po}', g(x) t 'teplota \uv{pred}'
show output


set term latex
set output "bronz_1.tex"
file = "bronz_1.dat"
set ylabel '\popi{t}{\C}'
set xlabel '\popi{t}{s}'
set key left center
#FIT_LIMIT = 1e-8
f(x) = A
g(x) = B*x+C
fit [410:500]  f(x) file u 1:2 via A
fit [50:320] g(x) file u 1:2 via B,C

plot file u 1:2 t 'namerané dáta', f(x) t 'teplota \uv{po}', g(x) t 'teplota \uv{pred}'
show output

set term latex
set output "med_1.tex"
file = "med_1.dat"
set ylabel '\popi{t}{\C}'
set xlabel '\popi{t}{s}'
set key right center
#FIT_LIMIT = 1e-8
f(x) = A*x+D
g(x) = B*x+C
fit [150:300]  f(x) file u 1:2 via A,D
fit [0:60] g(x) file u 1:2 via B,C
print f(105)-g(105)

plot file u 1:2 t 'namerané dáta', f(x) t 'teplota \uv{po}', g(x) t 'teplota \uv{pred}'
show output


set term latex
set output "k_1.tex"
file = "k_1.dat"
set ylabel '\popi{t\_{nameraná}}{\C}'
set xlabel '\popi{t\_{skutočná}}{\C}'
set key right bottom

f(x) = A*x+D

fit f(x) file u 1:2 via A,D


plot file u 1:2 t 'Namerná body', f(x) t 'kalibračná krivka'
show output
