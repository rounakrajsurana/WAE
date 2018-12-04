set terminal png size 600,400
set output "abcd.png"
set title "performance of aws-t2.micro instance"
set xlabel "no. of concurrent user sessions"
set ylabel "average response time"
plot "performance.txt" with lines 