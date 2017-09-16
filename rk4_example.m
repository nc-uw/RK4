t_min=0;
t_max=4*pi;
h=0.01;
xint=[0 0]';

t=t_min:h:t_max;
N=length(t);
x=xint;
%u=zeros(1,N);
u=ones(1,N);

for i=1:N-1, 
    [xt,tt]=rksolver(t(i),x(:,i),u(i),h,'fun1');
    x=[x xt];
end;

%plot(t,x(1,:),'red--',t,x(2,:),'blue*')
plot(t,x)
