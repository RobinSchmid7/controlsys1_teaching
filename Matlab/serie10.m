s = tf('s');

pol = 2;
P = 1/(s - pol);

kp = 2;
C = kp;

L = C*P;

nyquist(L)