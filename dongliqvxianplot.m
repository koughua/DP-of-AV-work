%�������߻��ƺ���
function []=dongliqvxianplot
[n,u,D]= dongliqvxian;
maker_idx = 1:3000:length(n);
plot(u(1,:),D(1,:));
hold on
plot(u(2,:),D(2,:));
hold on
plot(u(3,:),D(3,:));
hold on
plot(u(4,:),D(4,:));
hold on
plot(u(5,:),D(5,:));
hold off
xlabel('v/(km��min^-1)');
ylabel('D');
title('����������������������');
gtext('1') ,gtext('2'),gtext('3') ,gtext('4') ,gtext('5');
end
