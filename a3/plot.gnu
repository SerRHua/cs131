# Set the output file format and size
set term svg size 1200,800

# Set the labels for the axes
set xlabel "Number of Replies"
set ylabel "Number of Users"

# First plot with bin size of 1
set output "h1.svg"
set xrange [0:*]
set yrange [0:*]
set boxwidth 0.5
set style fill solid
bin_width = 1
bin(x, width) = width*floor(x/width)
plot "task2.txt" using (bin($2,bin_width)+bin_width/2.0):(1.0) smooth freq with boxes notitle

# Second plot with bin size of 4
set output "h4.svg"
set xrange [0:*]
set yrange [0:*]
bin_width = 4
plot "task2.txt" using (bin($2,bin_width)+bin_width/2.0):(1.0) smooth freq with boxes notitle
