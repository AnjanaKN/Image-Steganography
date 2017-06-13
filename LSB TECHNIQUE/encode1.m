function [im_out] = encode1( txt_bit,im_bit )

im_out=zeros(size(im_bit));
imsize=size(im_out);
bit_count=imsize(1)*imsize(2)*3;
if (bit_count>length(txt_bit))
    for i=1:length(txt_bit)
    im_bit(i)=10*floor(im_bit(i)/10)+txt_bit(i);
    end
end
else
    for i=1:bit_count-1
    im_bit(i)=10*floor(im_bit(i)/10)+txt_bit(i);
    end
    
if (length(txt_bit)>bit_count)
    for i=1:bit_count-1
    im_bit(i)=(101&&im_bit(i))+txt_bit(bit_count+i);
    end
end

if (length(txt_bit)>2*bit_count)
    for i=1:bit_count-1
    im_bit(i)=(1011&&im_bit(i))+txt_bit(2*bit_count+i);
    end
end

if (length(txt_bit)>3*bit_count)
    for i=1:bit_count-1
    im_bit(i)=(10111&&im_bit(i))+txt_bit(3*bit_count+i);
    end
end

if (length(txt_bit)>4*bit_count)
    sprintf('Only first %d characters can be encoded',4*bit_count);
end
    % im_out(imsize(1),imsize(2),imsize(3))=pixtobit(length(txt_bit)/8);

for i=0:7
    last_bit = mod(im_bit, 10);
    im_out = im_out + last_bit * (2 ^ i);
    im_bit = floor(im_bit/10);
end
im_out(imsize(1),imsize(2),imsize(3))= length(txt_bit)/8;   % Change this line---------------------------------------------
figure(2)
imshow(uint8(im_out));
title('Encrypted Image');
imwrite(uint8(im_out),'f:\img001.png');
end


