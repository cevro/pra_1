set term latex
set output "led_1.tex"
file = "led_1.dat"
set ylabel '\popi{t}{\C}'
set xlabel '\popi{t}{s}'
set key right center
#FIT_LIMIT = 1e-8
f(x) = A*x+D
g(x) = B
fit [250:300]  f(x) file u 1:2 via A,D
fit [25:100] g(x) file u 1:2 via B

plot file u 1:2 t 'namerané dáta', f(x) t 'teplota \uv{po}', g(x) t 'teplota \uv{pred}'
show output


set term latex
set output "led_2.tex"
file = "led_2.dat"
set ylabel '\popi{t}{\C}'
set xlabel '\popi{t}{s}'
set key right center
#FIT_LIMIT = 1e-8
f(x) = A*x+D
g(x) = B*x+C
fit [800:1000]  f(x) file u 1:2 via A,D
fit [0:20] g(x) file u 1:2 via B,C

plot file u 1:2 t 'namerané dáta', f(x) t 'teplota \uv{po}', g(x) t 'teplota \uv{pred}'
show output

set term latex
set output "var_1.tex"
file = "var_1.dat"
set ylabel '\popi{t}{\C}'
set xlabel '\popi{t}{s}'
set key right center
#FIT_LIMIT = 1e-8
f(x) = A*x+D
g(x) = B*x+C
fit [500:520]  f(x) file u 1:2 via A,D
fit [0:60] g(x) file u 1:2 via B,C
print f(105)-g(105)

plot file u 1:2 t 'namerané dáta', f(x) t 'teplota \uv{po}'
show output
