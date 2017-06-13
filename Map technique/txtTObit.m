 function [bin]=txtTObit(txt_file)
 fid = fopen(txt_file);
    x=fread(fid,'*char');
    binary = dec2bin(x,8);
    binary_t=transpose(binary);
    bin=binary_t(:)-'0';
 end
    