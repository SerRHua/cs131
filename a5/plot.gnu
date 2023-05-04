# Set the output file format and size
set term svg size 1200,800
set output "scatterplot.svg"

# Set the labels for the axes
set xlabel "Row number"
set ylabel "Value"

# Set the style of the points
set style line 1 pt 7 ps 1.5 lc rgb "blue"

# Plot the data
plot "scatter.txt" using 0:1 with points ls 1 notitle

