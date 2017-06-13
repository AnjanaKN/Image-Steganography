function[encoded_image]=RUN_TO_ENCODE(im_file,text_file)

im=imread(im_file);
txt_bit=txtTObit(text_file);

im_bit=im2im_bit(im);
im_out=encode1(txt_bit,im_bit);
imwrite(im_out,'LSBencoded_image.bmp');
end