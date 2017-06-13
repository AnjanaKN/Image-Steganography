function [map_bit]=map2map_bit(map)
map_bit=(zeros(size(map)));

% map=double(map);
for i=7:-1:0
    map_bit = (10*map_bit) + (floor(map/(2^i)));
    map = mod(map,2^i);
end
end