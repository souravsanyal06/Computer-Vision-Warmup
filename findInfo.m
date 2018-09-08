function[maxValue, minValue, meanValue, medianValue] = findInfo(oriIm)

[a,b] = size(oriIm);
a = uint32(a);
b = uint32(b);
maxValue = zeros(1,1,'uint32');
minValue = zeros(1,1,'uint32');
mean = zeros(1,1,'uint32');


for i = 1:a 
    for j = 1: b
        val1 = oriIm(i,j);
        val2 = oriIm(i,j);
        val3 = oriIm(i,j);
        
        if (val1 > maxValue)
            maxValue = val1 ;
        end
        
        if (val2 < minValue )
            minValue = val2;
        end
        
        mean = mean + uint32(val3); 
    end
end

meanValue =double(mean)/double(a*b) ;
  

oriIm = sort(oriIm,1);

x = length(oriIm);

if ( mod(x,2) == 0 )
   
   median = (oriIm(x/2,:)+oriIm(x/2+1,:))/2;
   median = sort(median);
   z = length(median);
   if (mod(z,2) == 0)
       medianValue = (median(z/2)+median(z/2 +1))/2;
          else
       medianValue = median((z+1)/2);
   end
else
    median = oriIm((x+1)/2,:);
    median = sort(median);
    z = length(median);
   if (mod(z,2) == 0)
       medianValue = (median(z/2)+median(z/2 +1))/2;
          else
       medianValue = median((z+1)/2);
   end
end   
     
   
end

    
    
    
    


