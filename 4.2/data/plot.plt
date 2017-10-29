set term latex
set output "graph_1.tex"

set ylabel '\popi{l}{cm}'
set xlabel '\popi{t}{s}'
A1 = A2 = 50
T1 = T2 = 500 
S1 = 60
S2 = 80
sigma1 = sigma2 = 6*pi/5
delta1 = 0.000482449
delta2 = 0.000482449
#FIT_LIMIT = 1e-8
f(x) = A1*exp(-delta1*x)*sin((2*pi*x/T1)+ sigma1) + S1
g(x) = A2*exp(-delta2*x)*sin((2*pi*x/T2)+ sigma2) + S2
fit  [1000:1860] [] f(x) "data.dat" u 1:2:(1) via S1,A1,delta1,T1,sigma1
fit  [2000:4000] [] g(x) "data.dat" u 1:2:(1) via S2,A2,T2,sigma2

plot "data.dat" u 1:2:(1):(5) t 'Namerané hodnoty', S1 t '$S^1$', S2 t '$S^2$'
show output

set output "graph_2.tex"
plot "data.dat" u 1:2:(1):(5) w xyerrorbars t 'Namerané hodnoty'
show output


set output "graph_3.tex"

plot [1000:1860] [:180] "data.dat" u 1:2:(1):(5) w xyerrorbars t 'Namerané hodnoty', f(x) t 'fit'

show output

set output "graph_4.tex"

plot  [2100:] "data.dat" u 1:2:(1):(5) w xyerrorbars t 'Namerané hodnoty', g(x) t 'fit'

show output


#S1              = 115.61           +/- 0.311        (0.269%)
#A1              = 65.346           +/- 4.865        (7.445%)
#delta1          = 0.000494007      +/- 5.378e-05    (10.89%)
#T1              = 498.203          +/- 2.041        (0.4097%)
#sigma1          = 4.92732          +/- 0.07254      (1.472%)


#S2              = 125.6            +/- 0.1054       (0.08394%)
#A2              = 70.9484          +/- 0.5865       (0.8267%)
#T2              = 488.917          +/- 0.5938       (0.1215%)
#sigma2          = 4.79425          +/- 0.04206      (0.8773%)

