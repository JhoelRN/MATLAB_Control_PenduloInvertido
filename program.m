clear all
close all
clc

f1 = @penduloinv;

Tf = 6;   % tiempo final
T = [ 0:0.01: Tf]; % tiempo

x0 = [1 0 0.01 0]; % inicializacion

K = [-35 -34 -150 -34]; %Ganancia para ley control U = -kX

[t,x]=ode45(f1,T, x0, [],K);

% PLOT! 
figure(1)
subplot(2,2,1)
plot(t,x(:,1))
title('x')
grid

subplot(2,2,2)
plot(t,x(:,2))
title('x •')
grid 

subplot(2,2,3)
plot(t,x(:,3))
title('\theta')
grid

subplot(2,2,4)
plot(t,x(:,4))
title('\theta •')
grid



