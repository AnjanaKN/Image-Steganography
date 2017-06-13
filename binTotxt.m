function [txt]= binTotxt(bin)
l=length(bin);
for i=1:8:l-7   
str=bin(i)*10^7+bin(i+1)*10^6+bin(i+2)*10^5+bin(i+3)*10^4+bin(i+4)*10^3+bin(i+5)*10^2+bin(i+6)*10+bin(i+7);

str=num2str(str);
str=bin2dec(str);
str=char(str);
txt(i)=str;
end
 txt=txt(1:8:l-7);
end