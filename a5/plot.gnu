# Set the output file format and size
set term svg size 1200,800
set output "scatterplot.svg"

# Set the labels for the axes
set xlabel "Score Range"
set ylabel "Frequency"

# Set the style of the points
set style line 1 pt 7 ps 1.5 lc rgb "blue"

# Set the x axis labels to be rotated by 90 degrees
set xtics rotate by -90

# Plot the data
plot "score_ranges.txt" using 0:2 with points ls 1 notitle

