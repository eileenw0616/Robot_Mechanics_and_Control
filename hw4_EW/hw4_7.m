clc
sys = tf([1 3],[1 5 20 16 0]);
rlocus(sys)
axis([-6 6 -6 6])

