set term svg size 800,600
set output "h1.svg"
set xlabel "Number of Replies"
set ylabel "Number of Users"
set xrange [0:20]
set yrange [0:400]
set boxwidth 0.5
set style fill solid
bin_width = 1
