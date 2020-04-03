function f=hex8dec(mat)
format long g
integer=mat(3:6);
decimal=mat(7:10);

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
if hex2dec(mat(3))>=8
    f=f-8*16^3;
    f=-f;
else f=f;
end

%8''80018000