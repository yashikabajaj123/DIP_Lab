clc;close all;clear all;
temp = [1 2;3 4]
[U,S,V] = svd(temp);
disp(U);
disp(V);
disp(S);
