function[blurredIm] = BlurImage(oriIm)

if (ndims(oriIm)==2)
[a,b]=size(oriIm);
 blurredIm = zeros(a,b,'uint8');
  for i=1:2:a
    for j =1:2:b
        avg = double(oriIm(i,j)+oriIm(i+1,j)+oriIm(i,j+1)+oriIm(i+1,j+1))/double(4);
        blurredIm(i,j)=avg;
        blurredIm(i+1,j)=avg;
        blurredIm(i,j+1)=avg;
        blurredIm(i+1,j+1)=avg;
    end
  end    
end

if (ndims(oriIm)==3)
[a,b,c]=size(oriIm);
blurredIm = zeros(a,b,c,'uint8');
 for i=1:2:a
    for j =1:2:b
        x = double(oriIm(i,j,1)+oriIm(i+1,j,1)+oriIm(i,j+1,1)+oriIm(i+1,j+1,1))/double(4);
        y = double(oriIm(i,j,2)+oriIm(i+1,j,2)+oriIm(i,j+1,2)+oriIm(i+1,j+1,2))/double(4);
        z = double(oriIm(i,j,3)+oriIm(i+1,j,3)+oriIm(i,j+1,3)+oriIm(i+1,j+1,3))/double(4);
        blurredIm(i,j,1)=x;
        blurredIm(i+1,j,1)=x;
        blurredIm(i,j+1,1)=x;
        blurredIm(i+1,j+1,1)=x;
        blurredIm(i,j,2)=y;
        blurredIm(i+1,j,2)=y;
        blurredIm(i,j+1,2)=y;
        blurredIm(i+1,j+1,2)=y;
        blurredIm(i,j,3)=z;
        blurredIm(i+1,j,3)=z;
        blurredIm(i,j+1,3)=z;
        blurredIm(i+1,j+1,3)=z;
    end
 end
end
    




