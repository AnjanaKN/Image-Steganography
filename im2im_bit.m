% function [im_bit]=im2im_bit(im)
% 
% im_bit=uint8(zeros(size(im)));
% im=double(im);
% for i=7:-1:0
%     im_bit = 10*im_bit + floor(im / (2 ^ i));
%     im = mod(im, 2^i);
% end
% end

function [im_bit]=im2im_bit(im)
im_bit=(zeros(size(im)));

im=double(im);
for i=7:-1:0
    im_bit = (10*im_bit) + (floor(im/(2^i)));
    im = mod(im,2^i);
end
end