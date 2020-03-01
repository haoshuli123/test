t=[0.0 0.3 0.8 1.1 1.6 2.3]';
Y=[0.82 0.72 0.63 0.60 0.55 0.5]';
A=[ones(size(t)),exp(-t)];
x=A\Y;
n=500;
tt=zeros(n,1);
yy=zeros(n,1);
dt=2.3/n;
for i=1:n
    tt(i)=i*dt;
    yy(i)=x(1)+x(2)*exp(-tt(i));
end
plot(t,Y,'*b',tt,yy,'r')
