clear
num=11;
seg=num-3;
% p(1,:)=[20,12,25];
% p(2,:)=[30,90,150];
% p(3,:)=[200,60,18];
% p(4,:)=[250,98,60];
% p(5,:)=[8,120,9];
for b=1:1:num
axis([-50,50,-50,50]);
a=ginput(1);
p(b,1:2)=a;
p(b,3)=0;
plot(a(:,1),a(:,2),'ob');
hold on;
end
plot3(p(:,1),p(:,2),p(:,3),'--ob');
w=[1,1,1,1,1,1,1,1,1,1,1];
u=[0,0,0,0,0.1,0.2,0.4,0.5,0.6,0.8,0.9,1,1,1,1];
 NurbsGetPose(3,seg,200, p, w, u)
