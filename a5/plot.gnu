set term svg size 1200,800
set output "bar_chart.svg"
set xlabel "Score Ranges"
set ylabel "Frequency"
set boxwidth 0.8
set style fill solid
plot "score_ranges.txt" using 2:xtic(1) with boxes notitle

