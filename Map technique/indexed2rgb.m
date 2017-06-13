function[im_out]=indexed2rgb(indexed,encoded_map)
indsize=size(indexed);
im_out=zeros(indsize(1),indsize(2),3);

for i=1:indsize(1)
    for j=1:indsize(2)
        im_out(i,j,1)=encoded_map(1,indexed(i,j),1);
        im_out(i,j,2)=encoded_map(1,indexed(i,j),2);
        im_out(i,j,3)=encoded_map(1,indexed(i,j),3);
    end
end
imshow(uint8(im_out));
title('Palette encoded image');

end
