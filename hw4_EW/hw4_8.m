clc
s = tf('s');
G = 1/(s-1)^2;
subplot(2,1,1)
step(G)
title('Step Response Before Controller')
Gc = 1000*(s+1)/(s+100);
sys = feedback(G*Gc, 1);
subplot(2,1,2)
step(sys)
title('Step Response After Controller')