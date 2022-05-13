A = [-5 -1;3 -1];
B = [2;5];
C = [1 2];
D = 0;
sys = ss(A, B, C, D);
x0 = [1 1];
t = 0:0.05:10;
u = zeros(length(t),1);
u(t>=0,1) = 1;
lsim(sys,u,t,x0)
