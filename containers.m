clear all;
close all;
clc;

g   = 9.81;
S   = 1;
rho = 1000;
Cl  = 1000;
h0  = 4;

alpha = sqrt(g/S^2/rho/Cl);
C     = sqrt(h0);
tf = 2*C/alpha;

t = linspace(0, tf, 1001);  
h = max(C -0.5* alpha*t, 0).^2;     

h_av = (alpha^2*tf^3/12 + alpha*sqrt(h0)*tf^2/2+h0*tf)/tf

plot(t, h)

ylim([0 h0])
xlabel('t (s)'); ylabel('h (m)'); grid on 
