% ------------------a--------------------
function f=bin32dec(format)
integer=format(6:20);
decimal=format(21:36);

int=0;n=length(integer);

for i=1:n

    int=int+str2num(integer(i))*2^(n-i);

end

dec=0;m=length(decimal);

for i=1:m

    dec=dec+str2num(decimal(i))*2^(-i);

end

f=int+dec;
format(5)
if format(5)=='0'
    f=f;
else f=-f;
end
%32''b0000_0000_0000_0001_1000_0000_0000_0000


%---------------------b-------------------
%none
