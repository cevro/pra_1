set term gif
set output file.".fit.gif"

plot file u 1:2
print GPVAL_DATA_Y_MIN
print GPVAL_DATA_Y_MAX
show output 
