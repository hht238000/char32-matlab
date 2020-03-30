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