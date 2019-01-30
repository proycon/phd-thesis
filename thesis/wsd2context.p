set terminal pngcairo size 1920,1200 enhanced font 'Droid Sans,35'
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xrange [0.8:3.2]
set xtics (1,2,3)
set yrange [13.5:26.5]
set ytic auto                          # set ytics automatically
#set title "Average Accuracy for different local context sizes"
set xlabel "Local context size"
set ylabel "Average accuracy"
plot    "wsd2context.dat" using 1:2 title 'Dutch' with linespoints lt -1 lc 0 lw 5 ps 5 pi -1 pt 4, \
    	"wsd2context.dat" using 1:3 title 'Spanish' with linespoints lt 1 lc 0 lw 5 ps 5 pi -1 pt 8, \
    	"wsd2context.dat" using 1:4 title 'Italian' with linespoints lt 5 lc 0 lw 5 ps 5 pi -1 pt 12, \
    	"wsd2context.dat" using 1:5 title 'German' with linespoints lt 10 lc 0 lw 5 ps 5 pi -1 pt 14, \
    	"wsd2context.dat" using 1:6 title 'French' with linespoints lt 13 lc 0 lw 5 ps 5 pi -1 pt 2,
