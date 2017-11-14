%In class 21

% 1. Consider the system we discussed in class for a gene which is produced
% and degraded: dx/dt = k - d*x. Now consider that this gene turns on a
% second gene y, which also degrades so that its equation is 
% dy/dt = k2*x - d2*y. Choose some values for k,d,k2, and d2 and run a
% numerical simulation of this system for the case where both genes start
% out off ( x(0) = 0 and y(0) = 0). Plot the value of x and y in time and 
% explain your results. 

%set k=k2=d=d2=1. because x(0)=0
%x=1-exp(-t)
% x simulation:
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
soll(1)=0;
for ii=2:nstep
    soll(ii)=soll(ii-1)+rhs(soll(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
figure(5)
plot(tt,soll)
hold on 
% y simulation
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
soll2(1)=0;
for ii=2:nstep
    soll2(ii)=soll2(ii-1)+rhs2(ii,soll2(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
plot(tt,soll2)

% when k=k2=d=d2=1, the simulation of both x and y are the same. Then I
% tried using different k2 and d2. One interesting result I found was that
% the change of d2 does not change the shape of the integration. But when I
% change the k2 into 2, the second integration become y(t)=0. I think that
% means the integration of y depends on value of x, since x is involved in
% the y derivative expression.

% 2. Consider the following model: 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% write code that simulates this system for several different starting
% values of x and y. Plot the results and comment on them. 
% starting point x0=0, y0=0
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
sollx(1)=0;
solly(1)=0;
for ii=2:nstep
    sollx(ii)=sollx(ii-1)+solly(ii-1)*dt;
    solly(ii)=solly(ii-1)+((1-sollx(ii-1)^2)*solly(ii-1)-sollx(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
figure(1)
plot(tt,sollx)
hold on;
plot(tt,solly)
% x=0, y=0.
%starting point x=1,y=0
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
sollx(1)=1;
solly(1)=0;
for ii=2:nstep
    sollx(ii)=sollx(ii-1)+solly(ii-1)*dt;
    solly(ii)=solly(ii-1)+((1-sollx(ii-1)^2)*solly(ii-1)-sollx(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
figure(2)
plot(tt,sollx)
hold on;
plot(tt,solly)

%starting point x=0,y=1
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
sollx(1)=0;
solly(1)=1;
for ii=2:nstep
    sollx(ii)=sollx(ii-1)+solly(ii-1)*dt;
    solly(ii)=solly(ii-1)+((1-sollx(ii-1)^2)*solly(ii-1)-sollx(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
figure(3)
plot(tt,sollx)
hold on;
plot(tt,solly)

%starting point x=1,y=1
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
sollx(1)=1;
solly(1)=1;
for ii=2:nstep
    sollx(ii)=sollx(ii-1)+solly(ii-1)*dt;
    solly(ii)=solly(ii-1)+((1-sollx(ii-1)^2)*solly(ii-1)-sollx(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
figure(4)
plot(tt,sollx)
hold on;
plot(tt,solly)

% y is the derivative of x. If y=0, then x will neither increase or decrease. If both x and y are 0 at starting point then y will also not change since its derivative is 0.
%So if the starting point of x and y are (0,0), then xt=0, yt=0. Otherwise, x and y will vibrate
% peroidcally.
