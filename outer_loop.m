clc;
%%Voltage refrence to Inductor current [Ticl]
Ti   =  Tci*Tm*Tpi;
Ticl = (Tci*Tm*Tpi)/(1+Ti);
%Ticl = 0.98;
margin(Ticl);
title('bode of Ticl (Voltage refrence to Inductor current)','FontSize',13);
grid on;

%%
% refrence voltage to Output voltage Transfer function [Tpicl]

Tpicl = (Tci * Tm *Tp)/(1+Ti);
margin(Tpicl);
title('bode of Tpicl ( refrence voltage to output current )','FontSize',13);
grid on;

%%
%Uncompensated loop gain 
Tkv = (Tci * Tm *Tp)/(1+Ti);
Tkv = Tpicl;
figure;
margin(Tkv);
title('bode of Tkv (uncompensated loop gain)','FontSize',13);
grid on;
hold on;
fcv = 1.32e3;
wc_new = 2*pi*fcv;
% evaluate at s = jω
Gjw = evalfr(Tkv, 1j*wc_new);

% magnitude and phase
mag_new   = abs(Gjw)         % linear magnitude
phase_new = angle(Gjw)*180/pi % degrees
% 
mag_new
phase_new
% 
% %%
% %%
PM_new=60;
 Phi_boost_new = PM_new - phase_new-90;
% 
K_new = tand(Phi_boost_new/2 + 45);
wz_new = wc_new/K_new;
wp_new = wz_new*K_new*K_new;
B_new = K_new*(1/mag_new)*wc_new;
gain_new = B_new/(K_new*K_new);

%outer loop compensator transfer fucntion 
Tcv = (gain *(1 + s/wz_new))/(s*(1+s/wp_new));
%compensated LOOP gain and bode plot
Tv = Tkv*Tcv ;

margin(Tv);
title("Margin of Outer Loop ");
grid on;
Vref = 5;