set term svg size 1200,800

# First plot with bin size of 1
set output "h1.svg"
set xlabel "Number of Replies"
set ylabel "Number of Users"
set xrange [0:20]
set yrange [0:100]
set boxwidth 0.5
set style fill solid
bin_width = 1
bin(x, width) = width*floor(x/width)
plot "task1.txt" using ($2):(1.0) smooth freq with boxes lc rgb "#E69F00" title "Bin size of 1"

# Second plot with bin size of 4
set output "h4.svg"
set xlabel "Number of Replies"
set ylabel "Number of Users"
set xrange [0:50]
set yrange [0:100]
bin_width = 4
plot "task2.txt" using ($2):(1.0) smooth freq with boxes lc rgb "#56B4E9" title "Bin size of 4"
