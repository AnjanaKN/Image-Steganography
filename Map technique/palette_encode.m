function[encoded_map,indexed]=palette_encode(txt_bit,map,indexed)

encoded_map=zeros(size(map));
mapsize=size(encoded_map);
for i=1:length(txt_bit)
    map(i)=10*floor(map(i)/10)+txt_bit(i);
end
    
for i=0:7
    last_bit = mod(map, 10);
    encoded_map = encoded_map + last_bit * (2 ^ i);
    map = floor(map/10);
end
l=length(txt_bit)/8;
encoded_map(mapsize(1),mapsize(2)+1,1)=l;
encoded_map(mapsize(1),mapsize(2)+1,2)=0;
encoded_map(mapsize(1),mapsize(2)+1,3)=0;
indsize=size(indexed);
indexed(indsize(1),indsize(2))=mapsize(2)+1;
end
%imshow(uint8(encoded_map));
%title('Encrypted Palette Image');


