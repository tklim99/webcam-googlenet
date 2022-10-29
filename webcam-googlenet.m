 clear
 
 net = googlenet; % googlenet network가져오기
 inputSize = net.Layers(1).InputSize %인풋사이즈를 가져오기
 % I = imread('dog.jpg'); %사진 읽어오기
 % I = imread('dog2.jpg');
 % I = imread('dog3.jpg');
  I = imread('dog4.jpg');
 I=imresize(I,inputSize(1:2)); % 입력 크기에 맞게 크기 조절
 Label = classify(net,I); % 사진분류
 imshow(I) % 사진보여주기
 title(string(Label)) %예측레이블 표시



 