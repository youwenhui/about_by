clear
num=12;
w=[1,1,1,1,1,1,1,1,1,1,1,1,1];
u=[0,0,0,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,1,1,1,1];
% p(1,:)=[20,12,25];
% p(2,:)=[30,90,150];
% p(3,:)=[200,60,18];
% p(4,:)=[250,98,60];
% p(5,:)=[8,120,9];
dk=1e10;
nk=0;
for b=1:1:num
axis([-50,50,-50,50]);
a=ginput(1);
p(b,1:2)=a;
p(b,3)=0;
plot(a(:,1),a(:,2),'ob');
hold on;
end
plot3(p(:,1),p(:,2),p(:,3),'--ob');
% w=[1,1,1,1,1,1,1,1,1,1,1];
% u=[0,0,0,0,0.2,0.3,0.4,0.5,0.6,0.7,1,1,1,1];
x=1;
q=zeros(1,3);
%均匀插值得出样条曲线
% point=getexcpoint(p,u,w);
for t=0:0.001:1
   q(x,:)=getp(p,u,w,3,t);
    x=x+1;
end      
figure(1)
plot3(q(:,1),q(:,2),q(:,3),'-r');
pose1(1,:)=getp(p,u,w,3,0.4);
pose1(2,:)=getp(p,u,w,3,0.8);
plot3(pose1(:,1),pose1(:,2),pose1(:,3),'or');
% plot3(point(:,1),point(:,2),point(:,3),'ob')
hold on;
grid on;









    
