% RT1, Serie 9 Aufg 1
% schmirob@ethz.ch
%%
s = tf('s');
L = 10/(s+2)*1/(s^2+0.3*s+1); % Open loop Übertragungsfunktion

T = L/(1+L); % Closed loop Übertragungsfunktion

figure(1)
subplot(2,2,1); % Plot grid 2x2, access 1st element
step(L,20,'b')
title('Sprungantwort Open Loop');

subplot(2,2,3);
bode(L,'b')
title('Bode Open Loop');

subplot(2,2,2);
step(T,20,'r')
title('Sprungantwort Closed Loop');

subplot(2,2,4);
bode(T,'r')
title('Bode Closed Loop');

figure(2)
nyquist(L)
title('Nyquist Open Loop');