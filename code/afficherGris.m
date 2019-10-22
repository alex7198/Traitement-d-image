function [K] = afficherGris(nom)
    I=imread(nom);
    J=rgb2gray(I);
    K=double(J)/double(max(max(J)));
    imshow(K)
end
