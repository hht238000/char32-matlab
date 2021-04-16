% ---------------------a-------------------------
function y=char32(t)
N=t;
%求正负
if N>=0 %判正负
    c='0';
else c='1';
end
%求小数
N1=abs(N);
if N1>=0&&N1<1
    N1=abs(N)+1;
else N1=abs(N);
end
n=N1;
m=16;%保留10位小数
d=n*2^m;
[f,e]=log2(d);
a=char(mod(floor(d*2.^(1-e:0)),2)+'0');
a=[a(end-m+1:end)];%小数部分
%求整数部分
N2=abs(N);
b=dec2bin(N2,15);
y=['32''b',c,b,'_',a];




% --------------------b--------------
dec2hex(round(t*2^16),8)
