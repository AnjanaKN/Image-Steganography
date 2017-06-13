function [secret]=RUN_TO_DECODE(im_file)

im=imread(im_file);
im_out=im2im_bit(im);
dbin=decode1(im_out);
secret=binTotxt(dbin)

end