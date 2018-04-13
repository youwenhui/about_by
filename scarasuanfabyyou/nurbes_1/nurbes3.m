tk=0.01;
% % % % % % % % % % % 
axis([-50 50 -50 50]);
grid on;
a=ginput(4);
lx=a(:,1);
ly=a(:,2);
plot(lx,ly,'-o');
hold on;
% % % % % % % % % % %
p=zeros(1/tk,2);
x=1;t=0;

w0=1;w1=5;w2=5;w3=1;%Ȩ

while t<1
    w=(1-t)^3*w0+3*t*(1-t)^2*w1+3*t^2*(1-t)*w2+t^3*w3;
    p(x,:)=((1-t)^3*w0*a(1,:)+3*t*(1-t)^2*w1*a(2,:)+3*t^2*(1-t)*w2*a(3,:)+t^2*w3*a(4,:))/w;
    x=x+1;
    t=t+tk;
end
axis([-50 50 -50 50]);
plot(p(:,1),p(:,2),'or');

