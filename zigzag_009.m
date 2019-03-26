%Matlab code for zigzag scan

%begin
clc; close all; clear all;
c = [11 12 13 14; 15 16 17 18 ;19 20 21 22; 23 24 25 26];     %input image array
A=c';
disp(C);

[row col]=size(A);

if row~=col
disp('toZigzag() fails!! Must be a square matrix!!');        
return;
end;

b=zeros(row*col,1);                                          
count=1;
for s=1:row
    if mod(s,2)==0
        for m=s:-1:1
         b(count)=A(m,s+1-m);
         count=count+1;
        end;
    else
        for m=1:s
         b(count)=A(m,s+1-m);
         count=count+1;
        end;
    end;
end;

if mod(row,2)==0
    flip=1;
else
    flip=0;
end;

for s=row+1:2*row-1
    if mod(flip,2)==0
        for m=row:-1:s+1-row
         b(count)=A(m,s+1-m);
         count=count+1;
        end;
    else
        for m=row:-1:s+1-row
         b(count)=A(s+1-m,m);
         count=count+1;
        end;
    end;
end;
flip=flip+1;
disp(b);

%end