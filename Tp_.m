clc; clear; close all;
%Tp = Vo/d duty to output voltage transfer function of a flyback converter
%% ================== PARAMETERS ==================
VI  = 12;           % Input voltage (V)
VO  = 5;            % Output voltage (V)
Pout = 50;
del_Vo = 0.3;
RL  = 20;           % Load resistance (Ohm)
Io = VO/RL;
fs  = 100e3;        % Switching frequency (Hz)
Lm  = 200e-6;       % Magnetizing inductance (H)
C   = 150e-6;       % Filter capacitance (F)
n   = 3;            % Turns ratio
D   = 0.58;         % Duty cycle
rC  = 10e-3;        % ESR of capacitor (Ohm)
rDS = 0.5;          % MOSFET on-state resistance (Ohm)
RF  = 0.025;        % Diode forward resistance (Ohm)
rT1 = 0.2;          % Primary winding resistance (Ohm)
rT2 = 0.1;          % Secondary winding resistance (Ohm)
IL = Io/(n*(1-D));

%% ================== EQUIVALENT r ==================
r = D*(rT1 + rDS) + n^2*(1-D)*(rT2 + RF);
%r=0;
%% ================== COMMON PARAMETERS ==================
% Damping factor (E)
E = (Lm + C*(r*(RL + rC) + n^2*RL*rC*(1 - D)^2)) / (2*sqrt(Lm*C*(RL + rC)*(n^2*RL*(1 - D)^2 + r)));
Tpo = (VO / (D*(1-D))) *((n^2*(1-D)^2*RL - r*D) / (n^2*(1-D)^2*RL + r));
% LHP zero
w_zn = 1/(rC*C);

% RHP zero 
w_zp = (n^2*RL*(1 - D)^2 - D*r - D^2*rDS - n^2*D*(1 - D)*RF) / (D*Lm);

w_o = sqrt( (r + n^2*RL*(1 - D)^2) / (Lm*C*(RL + rC)) );
s = tf('s');

Tp = Tpo * ((1 + s/w_zn)*(1 - s/w_zp)) / ((s/w_o)^2 + (2*E*s)/w_o + 1);


figure('Name','Root Locus - Tp','NumberTitle','off','Color','w');
rlocus(Tp);
title('Root Locus of Tp (Duty Cycle to Output Voltage)','FontSize',13);
grid on;

figure();
margin(Tp);
title('Bode plot of Tp (Duty Cycle to Output Voltage)','FontSize',13);

grid on;