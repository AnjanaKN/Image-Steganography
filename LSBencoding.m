im=imread('img1.jpeg');

txt_bit=txtTObit('Secret.txt');

im_bit=im2im_bit(im);
im_out=encode1(txt_bit,im_bit);
dbin=decode1(im_out);
binTotxt(dbin)