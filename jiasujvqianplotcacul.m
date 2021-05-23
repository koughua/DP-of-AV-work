%加速时间&距离计算函数
function[]=jiasujvqianplotcacul
[~,~,D] = dongliqvxian;
[~,u,x]=jiasujvqian;
[yD,~]=max(D(2,:));%动力特性最大值
[~,x2]=min(x(2,:));%1/a最小值位置
fin=abs(u(3,:)-32);
[~,x3]=min(fin);%32km点三挡位置
[~,x5]=max(u(2,:));
closex=abs(u(3,:)-u(2,x5));
[~,x6]=min(closex);%1/a最小值位置
a=1;
%寻找交点，离散曲线，方法有一点误差，但点足够密集，在工程上误差允许范围内不影响结果精度
while x(3,x6-a)-x(2,x5-a)<=0
      a=a+1;
end
S1=trapz(u(2,x2:x5-a),x(2,x2:x5-a));%加速第二阶段时间1，带3.6
S2=trapz(u(3,x6-a:x3),x(3,x6-a:x3));%加速第二阶段时间2，带3.6
ux1=u(2,x2:x5-a).*x(2,x2:x5-a);%便于积分
ux2=u(3,x6-a:x3).*x(3,x6-a:x3);%便于积分
X1=trapz(u(2,x2:x5-a),ux1);%加速第二阶段路程，带3.6 3.6
X2=trapz(u(3,x6-a:x3),ux2);%加速第二阶段路程，带3.6 3.6
xd1=10/1.2*(2*yD-0.01);%速度低，不考虑风阻
Sd1=u(2,x2)/xd1;%加速第一阶段时间，带3.6
Xd1=0.5*xd1*Sd1^2;%加速第一阶段路程，带3.6 3.6
S=1/3.6*(S1+S2+Sd1);%总时间
X=(X1+X2+Xd1)/3.6/3.6;%总路程
disp(X);
disp(S);
end


