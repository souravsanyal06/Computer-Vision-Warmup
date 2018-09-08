
disp('Finish Solving Problem 1');


A = imread('peppers.bmp');
figure,imshow(A);

pause;

disp('Finish Solving Problem 2');

B = rgb2gray(A);
TB = B';
[a,b] = size(B);
HBU = B(1:a/2,:);
HBL = B(a/2+1:a,:);
HB = [HBL;HBU];
FB = B(:,b:-1:1);

figure;
subplot(2,2,1)
imshow(B)
title('B')
subplot(2,2,2)
imshow(TB)
title('TB')
subplot(2,2,3)
imshow(HB)
title('HB')
subplot(2,2,4)
imshow(FB)
title('FB')

pause;

disp('Finish Solving Problem 3');

max_value = max(max(B));
min_value = min(min(B));
mean_value = mean(mean(B));

median_value = median(median(B));

[maxValue, minValue, meanValue, medianValue] = findInfo(B);

disp('maxValue using inbuilt function : ') 
disp(max_value);

disp('maxValue using findInfo : ')
disp(maxValue);

disp('minValue using inbuilt function : ') 
disp(min_value);

disp('minValue using findInfo : ')
disp(minValue);

disp('meanValue using inbuilt function : ') 
disp(mean_value);

disp('meanValue using findInfo : ')
disp(meanValue);

disp('medianValue using inbuilt function : ') 
disp(median_value);

disp('medianValue using findInfo : ')
disp(medianValue);

pause;

disp('Finish Solving Problem 4');

C = double(B)/double(max_value);
figure, imshow(C); 
title('Normalized Grayscale Image');

c1 = C(:,1:b/4);
c2 = C(:,b/4+1:b/2);
c3 = C(:, b/2+1:3*b/4);
c4 = C(:, 3*b/4 +1 : b);
c2 = c2.^1.25;
c4 = c4.^0.75;
D = [c1,c2 ,c3,c4];

figure, imshow(D); 
title('Processed Grayscale Image');

pause;

disp('Finish Solving Problem 5');

t=0.3;

bw1 = zeros(a,b);
bw1(C>t)=1;

imwrite(bw1, 'bw1.bmp');

bw2 = ones(a,b);
bw2(C<=t)=0;

imwrite(bw2,'bw2.bmp');
bw3 = imbinarize(C,t);
imwrite(bw3, 'bw3.bmp');

disp('Both of my methods worked');

figure;
subplot(1,3,1)
imshow(bw1)
title('my first method');
subplot(1,3,2)
imshow(bw2)
title('my second method');
subplot(1,3,3)
imshow(bw3)
title('my third method');

pause;

disp('Finish Solving Problem 6');
BA = BlurImage(A);
BB = BlurImage(B);



figure;
subplot(2,2,1)
imshow(A)
title('RGB image')
subplot(2,2,2)
imshow(B)
title('Grayscale Image')
subplot(2,2,3)
imshow(BA)
title('Blurred RGB Image')
subplot(2,2,4)
imshow(BB)
title('Blurred Grayscale Image')

pause;

disp('Finish Solving Problem 7');
clear;









