% --------------------a-----------------------
function sin_char32()
fid=fopen('H:\Users\Administrator\Desktop\data.txt','w')
for t=0:0.0625:10
    y=[char32(t),':','c=',char32(sin(t)),';','//','t=',mat2str(t),',','sin=',mat2str(sin(t))]
    fprintf(fid,'%s \r\n',y);
    t1=3*t;
    y=[char32(t1),':','c=',char32(sin(t1)),';','//','t=',mat2str(t1),',','sin=',mat2str(sin(t1))]
    fprintf(fid,'%s \r\n',y);
    t2=t-2.8;
    y=[char32(t2),':','c=',char32(sin(t2)),';','//','t=',mat2str(t2),',','sin=',mat2str(sin(t2))]
    fprintf(fid,'%s \r\n',y);
end
fclose(fid);

%--------------------b-------------------
function sin_char32()
fid=fopen('E:\desktop\data.txt','w')
for t=0:0.00001:1.6
y=['32''h',dec2hex(round(t*2^16),8),':','x<=','32''h',dec2hex(round(sin(t)*2^16),8),';','//','t=',mat2str(t),',','sin=',mat2str(cos(t))]
fprintf(fid,'%s \r\n',y);
end
fclose(fid);
