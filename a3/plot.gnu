set term svg size 1200,800

# First plot with bin size of 1
set output "h1.svg"
set xlabel "Number of Replies"
set ylabel "Number of Users"
set xrange [0:20]
set yrange [0:400]
set boxwidth 0.5
set style fill solid
bin_width = 1
bin(x, width) = width*floor(x/width)
plot "task1.txt" using ($1):(1.0) smooth freq with boxes notitle

# Second plot with bin size of 4
set output "h4.svg"
set xrange [0:100]
set yrange [0:200]
bin_width = 4
plot "task2.txt" using ($1):(1.0) smooth freq with boxes notitle
