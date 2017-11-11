function dy=rhs2(ii,y)
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
soll(1)=0;
for ii=2:nstep
    soll(ii)=soll(ii-1)+rhs(soll(ii-1))*dt;
end
dy=soll(ii)-y;
end
