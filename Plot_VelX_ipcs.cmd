set style data lines
set yrange [-0.5:1.2] 
#set logscale y
set xrange [0.0:1.0] 
#posicao da legenda
#set key 1600.0,400000.0
set key left top
#set key right top
set title " Re = 100 e solver IPCS"
set xlabel "y"
set ylabel "Vel_x"
# 

plot   'u_ipcs_Re_100.dat'  using 5:1 title 'Malha 20x20' w lines lt 6
replot   'u_ipcs_Re_100.dat'  using 5:2 title 'Malha 40x40' w lines lt 9
replot   'u_ipcs_Re_100.dat'  using 5:3 title 'Malha 80x80' w lines lt 10
replot   'u_ipcs_Re_100.dat'  using 5:4 title 'Malha 120x120' w lines lt 7
replot 'u_vel_ghia.dat'  using 1:2 title 'Ref. Ghia' w points lt  8 
replot
#
pause -1
#  posicao para colocar no tex
#set term post portrait 'Times-Roman' 24 
set term post landscape 'Times-Roman' 24 
#  posicao para ver no ghostview
# set term post landscape 'Times-Roman' 24 
set output 'uVel_Re1000.eps'
replot
