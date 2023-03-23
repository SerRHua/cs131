set term svg size 1200,800
set output "h1.svg"
set xlabel "Number of Replies"
set ylabel "Number of Users"
set xrange [0:5]
set yrange [0:5]
set boxwidth 0.5
set style fill solid
bin_width = 1
bin(x, width) = width*floor(x/width)
plot "t.txt" using (bin($1,bin_width)+bin_width/2.0):(1.0) smooth freq with boxes notitle
