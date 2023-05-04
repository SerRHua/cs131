# Set the output file format and size
set term svg size 1200,800

# Set the labels for the axes
set xlabel "Score"
set ylabel "Frequency"

# First plot with bin size of 10
set output "histogram.svg"
set xrange [300:800]
set yrange [0:*]
set boxwidth 10
set style fill solid
bin_width = 10
bin(x, width) = width*floor(x/width)
plot "2012-sat-results.csv" using (bin($4,bin_width)+bin_width/2.0):(1.0) smooth freq with boxes notitle

