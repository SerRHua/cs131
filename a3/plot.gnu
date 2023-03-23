set term svg size 1200,800

set xlabel "Number of Replies"
set ylabel "Number of Users"

set boxwidth 0.5
set style fill solid

# plot for bin size of 1
bin_width = 1
set output "h1.svg"
set xrange [0:20]
set yrange [0:400]
bin(x, width) = width*floor(x/width)
plot "task1.txt" using (bin($2,bin_width)+bin_width/2.0):(1.0) smooth freq with boxes notitle

# plot for bin size of 4
bin_width = 4
set output "h4.svg"
set xrange [0:100]
set yrange [0:200]
plot "task2.txt" using (bin($2,bin_width)+bin_width/2.0):(1.0) smooth freq with boxes notitle

