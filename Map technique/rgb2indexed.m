function[map,indexed]=rgb2indexed(im)

map=zeros(1,100,3);
imsize=size(im);
indexed=zeros(imsize(1),imsize(2));
k=1;

for i=1:imsize(1)
    for j=1:imsize(2)
        flag=1;
        for ite=1:k
            if(sum(map(1,ite,:)==im(i,j,:))==3)
                flag=0;
                break;
            end
        end
            if (flag)
                k=k+1;                                                                                           
                map(1,k,:)=im(i,j,:);
                indexed(i,j)=k;
            end
            if (flag==0) 
                    indexed(i,j)=ite;
            end
    end
end
          
    