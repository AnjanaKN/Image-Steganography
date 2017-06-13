function [bin]= decode_map(encoded_map)

    mapsize=size(encoded_map);
    
    bin_length=8*(encoded_map(mapsize(1),mapsize(2),1));
    bin=zeros(bin_length,1);
    for i=1:bin_length
        bin(i)=mod(encoded_map(i),2);
    end

end