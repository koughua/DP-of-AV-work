%加速度计算函数
function[n,u,x]=jiasujvqian
[n,u,D]= dongliqvxian;
f0=0.01+0.96*6*u.^2/21.15/9.81/19000;
x1=9.81/1.2*(D-f0);
x=1./x1;
end
