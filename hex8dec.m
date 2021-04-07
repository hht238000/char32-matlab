function f=hex8dec(mat)
format long g
integer=mat(4:7);
decimal=mat(8:11);

int=0;n=length(integer);

for i=1:n

    int=hex2dec(integer);

end

dec=0;m=length(decimal);

for i=1:m

    dec=dec+hex2dec(decimal(i))*16^(-i);

end

f=int+dec;
mat(3);
if hex2dec(mat(4))>=8
    f=f-8*16^3;
    f=-f;
else f=f;
end

%'8''h80018000'
％为了补码形式
