dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
soll(1)=0;
for ii=2:nstep
    soll(ii)=soll(ii-1)+rhs(soll(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
figure(1);
plot(tt,soll)
hold on

dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
soll2(1)=0;
for ii=2:nstep
    soll2(ii)=soll2(ii-1)+rhs2(ii,soll2(ii-1))*dt;
end
tt=linspace(interval(1),interval(2), nstep);
plot(tt,soll2)
hold off;

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