set terminal pngcairo size 1920,1200 enhanced font 'Droid Sans,35'
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xrange [0.8:3.2]
set xtics (1,2,3)
set yrange [0.745:0.79]
set ytic auto                          # set ytics automatically
#set title "Accuracy for different local context sizes"
set xlabel "Local context size"
set ylabel "Accuracy"
plot    "colibritapilot-context.dat" using 1:2 title 'Absolute accuracy' with linespoints lt -1 lc 0 lw 5 ps 5 pi -1 pt 2, \
        "colibritapilot-context.dat" using 1:3 title 'Word accuracy' with linespoints lt -1 lc 0 lw 5 ps 5 pi -1 pt 4
#        "context.dat" using 1:4 title 'BLEU' with linespoints
