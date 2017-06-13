function [bin]= decode1(im)

    imsize=size(im);
    
    bin_length=8*im(imsize(1),imsize(2),imsize(3));
    bin=zeros(bin_length,1);
    for i=1:bin_length
        bin(i)=mod(im(i),2);
    end

end