% ----------------a---------------------
function cos_char32()
fid=fopen('H:\Users\Administrator\Desktop\data.txt','w')
for t=0:0.0625:10
    y=[char32(t),':','c=',char32(cos(t)),';','//','t=',mat2str(t),',','cos=',mat2str(cos(t))]
    fprintf(fid,'%s \r\n',y);
    t1=3*t;
    y=[char32(t1),':','c=',char32(cos(t1)),';','//','t=',mat2str(t1),',','cos=',mat2str(cos(t1))]
    fprintf(fid,'%s \r\n',y);
    t2=t-2.8;
    y=[char32(t2),':','c=',char32(cos(t2)),';','//','t=',mat2str(t2),',','cos=',mat2str(cos(t2))]
    fprintf(fid,'%s \r\n',y);
end
fclose(fid);


%--------------------b-------------------
function cos_char32()
fid=fopen('E:\desktop\data.txt','w')
for t=0:0.00001:1.6
y=['32''h',dec2hex(round(t*2^16),8),':','x<=','32''h',dec2hex(round(cos(t)*2^16),8),';','//','t=',mat2str(t),',','cos=',mat2str(cos(t))]
fprintf(fid,'%s \r\n',y);
end
fclose(fid);
% '00017D8B:c=0000148F;//t=1.4904,cos=0.0803097469079393'
