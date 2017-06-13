im=imread('img1.jpeg');

txt_bit=txtTObit('Secret.txt');
[map,indexed]=rgb2indexed(im);


map_bit=map2map_bit(map);

[encoded_map,indexed]=palette_encode(txt_bit,map_bit,indexed);

im_out=indexed2rgb(indexed,encoded_map);

figure(5);imshow(uint8(im_out));
title('Palette encoded');
out=uint8(im_out);

[encoded_map1,indexed]=rgb2indexed(im_out);
dbin=decode_map(encoded_map1);

txt=binTotxt(dbin)
