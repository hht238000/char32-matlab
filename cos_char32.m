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