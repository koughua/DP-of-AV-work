%外特性曲线绘制函数
function[]= waitexingplot
[n,Pe,T] = waitexing;
Pe1=fengshan1.*Pe*0.98*0.99;
T1=(Pe1./n)*9549;
[ax,h1,h2]=plotyy(n,Pe,n,T);
set(get(ax(1),'ylabel'),'string', '功率P');
set(get(ax(2),'ylabel'),'string', '转矩T');
set(h1,'linestyle','-','color','b');
set(h2,'linestyle','-','color','b');
set(ax(1),'ylim',[0,300]);
set(ax(2),'ylim',[800,1400]);
xlabel('n/(r*min^-1)');
title('汽车发动机外特性中的功率与转矩曲线');
hold on
[ax1,h11,h21]=plotyy(n,Pe1,n,T1);
set(h11,'linestyle','--','color','r');
set(h21,'linestyle','--','color','r');
hold off
legend([h1,h2,h11,h21],'Pe','T','Pe`','T`');
gtext('Pe') ,gtext('T');
end