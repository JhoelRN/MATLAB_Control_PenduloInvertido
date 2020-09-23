
function Xp = penduloinv(t,x,K)
  
  ft = 0.1;
  M = 2;
  m=0.1;
  l=0.5;
  g=9.8;
  
  U = -K*x; %% ES LA FUERZA
  
  Xp = zeros(4,1);
  
  Xp(1) = x(2);
  Xp(2) = (-m*g*sin(x(3))*cos(x(3))+m*l*(x(4))^2*sin(x(3))+ft*m*x(4)*cos(x(3))+U)/(M+(1-(cos(x(3))^2))*m);
 
  Xp(3) = x(4);
  Xp(4) = ((M+m)*(g*sin(x(3))-ft*x(4))-(1*m*x(4)^2*sin(x(3))+U)*cos(x(3)))/(l*(M+(1-(cos(x(3))^2)))*m);
  
end