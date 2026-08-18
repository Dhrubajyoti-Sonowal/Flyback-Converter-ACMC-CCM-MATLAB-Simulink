
%% duty to inductor transfer function [Tpi(s)]

w_o = sqrt( (r + n^2*RL*(1 - D)^2) / (Lm*C*(RL + rC)) );  % natural freqency of oscillations
E = (Lm + C*(r*(RL + rC) + n^2*RL*rC*(1 - D)^2)) / (2*sqrt(Lm*C*(RL + rC)*(n^2*RL*(1 - D)^2 + r)));
w_zi = (1 + D) / (C*(rC*(1 + D) + RL));

% Tpio or dc gain
Tpio = (n*VO/D) * ((1 + D) / (n^2*RL*(1 - D)^2 + r));

s = tf('s');
% Transfer function Tpi(s)_
Tpi = Tpio * (1 + s/w_zi) / ((s/w_o)^2 + (2*E*s)/w_o + 1);

figure('Name','Root Locus - Tpi','NumberTitle','off','Color','w');
rlocus(Tpi);
title('Root Locus of Tpi (Duty Cycle to Inductor current)','FontSize',13);
margin(Tpi);
title('Bode plot of Tpi (Duty Cycle to Inductor current)','FontSize',13);
grid on;
%%
fc = fs/5;  % crossover frequency which we have choosen for inner loop
wc = 2*pi*fc;
%magnitude and phase at crossover frequency

% evaluate at s = jω
Gjw = evalfr(Tpi, 1j*wc);

% magnitude and phase
mag   = abs(Gjw);          % linear magnitude
phase = angle(Gjw)*180/pi; % degrees

mag
phase
%%
PM=60;
Phi_boost = PM - phase-90;
%compensator 
K = tand(Phi_boost/2 + 45);
wz = wc/K;
wp = wz*K*K;
B = K*wc*(1/mag);
gain = B/(K*K);
Tm = 1;        % pwm modulator 
%Type II compensator transfer function Tci
Tci = (gain * (1 + s/wz)) / (s * (1 + s/wp ));
margin(Tci)
title("bode plot of inner loop compensator");
grid on

Ti = Tpi*Tci;
margin(Ti)
title("bode plot of Compensated Loop Gain");
grid on
