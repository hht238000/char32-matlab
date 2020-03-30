function cos_v() 
A=[];
for t=0:0.0625:30
A=[A,cos(t)];
t
end
t=-0.0625;
fid=fopen('H:\Users\Administrator\Desktop\data.txt','w')
for i=1:1:(30/0.0625+1)
A0=dec2bin(abs(A(i)));
A(i)=abs(A(i))+1;%+2不对
n=A(i);
m=16;%保留10位小数
d=n*2^m;
[f,e]=log2(d);
a=char(mod(floor(d*2.^(1-e:0)),2)+'0');
i
t=0.0625+t;
cos(t)
t0=num2str(floor(double(cos(t)<0)));
num2str(t0);
a;
a=[char(t0),'00000000000000',char(A0),'_',a(end-m+1:end)]
t0b=num2str(floor(double(cos(t)<0)));
num2str(t0b);
ab=[char(t0b),'00000000000000',char(A0),'_',a(end-m+1:end)]
t
d=mat2str(t);
if(t<1)
n0=t+1;
m0=16;%保留10位小数
d0=n0*2^m0;
[f0,e0]=log2(d0);
a0=char(mod(floor(d0*2.^(1-e0:0)),2)+'0');
b3=dec2bin(t,5);
a0=['0000000000',b3,'_',a0(end-m0+1:end)]
else
n0=t;
m0=16;%保留10位小数
d0=n0*2^m0;
[f0,e0]=log2(d0);
a0=char(mod(floor(d0*2.^(1-e0:0)),2)+'0');
b3=dec2bin(t,5);
a0=['0000000000',b3,'_',a0(end-m0+1:end)]
end
a1=['32''b','0',a0,':','c=','32''b',a,';','//','t=',d,',','cos=',mat2str(cos(t)),]
fprintf(fid,'%s \r\n',a1);
a2=['32''b','1',a0,':','c=','32''b',ab,';','//','t=','-',d,',','cos=',mat2str(cos(-t)),]
fprintf(fid,'%s \r\n',a2);
end
fclose(fid);