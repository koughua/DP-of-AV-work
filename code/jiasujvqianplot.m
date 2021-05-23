%1/a曲线绘制函数
function[]=jiasujvqianplot
[n,u,x]=jiasujvqian;
maker_idx = 1:3000:length(n);
plot(u(2,:),x(2,:));
hold on
plot(u(3,:),x(3,:));
hold on
plot(u(4,:),x(4,:));
hold on
plot(u(5,1:16000),x(5,1:16000));
xlabel('v/(km·min^-1)');
ylabel('1/a');
title('1/a-v曲线');
gtext('2'),gtext('3') ,gtext('4') ,gtext('5');
end