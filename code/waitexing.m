%外特性曲线计算函数
function[n,Pe,T] = waitexing
n=600:0.1:2500;
Pe=274.2*((n/2500)+(n/2500).^2-(n/2500).^3);
T=(Pe./n)*9549;
end