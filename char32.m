function y=char32(t)
N=t;
%������
if N>=0 %������
    c='0';
else c='1';
end
%��С��
N1=abs(N);
if N1>=0&&N1<1
    N1=abs(N)+1;
else N1=abs(N);
end
n=N1;
m=16;%����10λС��
d=n*2^m;
[f,e]=log2(d);
a=char(mod(floor(d*2.^(1-e:0)),2)+'0');
a=[a(end-m+1:end)];%С������
%����������
N2=abs(N);
b=dec2bin(N2,15);
y=['32''b',c,b,'_',a];