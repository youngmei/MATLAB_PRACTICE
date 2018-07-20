%MATLAB_PRACTICE CHAPTER5_b
%% cell-1
A=cell(2,3);
A{1,3}=1:3;
A{2:2}='string';

%% cell-2
A=[1 2 3 4;5 6 7 8;9 10 11 12];
C={A sum(A) sum(sum(A))};
D(1,1)={A};
D(2,1)={sum(A)};
D(2,2)={sum(sum(A))};

%% cell-3 
clear,clc
C(1)={[1 2 3]};
C(2)={[1 0 0]};
C(3)={[0 1 0]};
C(4)={[0 0 1]};
C(5)={[1 0 1]};
C(6)={[1 1 1]};
d1=conv(C{1:2});
d2=conv(C{1},C{3});
d3=conv(C{1},C{5});

%% conv
% a(x)=x^3+2x^2+3x+4, b(x)=x^3+4x^2+9x+16, c(x)=a(x)*b(x)
a=[1 2 3 4];
b=[1 4 9 16];
c=conv(a,b);
% c=[1 6 20 50 75 84 64]; c(x)=x^6+6x^5+20x^4+50x^3+75x^2+84x+64
%求c(x)的导数, polyder
p=polyder(c);
%p=[6 30 80 150 150 84],  p(x)=6x^5+30x^4+80x^3+150x^2+150x+84
%解卷积，反求多项式b(x)
[q,r]=decov(c,a);
% q=[1 4 9 16], r=[0 0 0 0 0 0 0]
% 其中q为多项式a除以c的商,r为余数，此处恰好为零。
% 求a(x)/b(x)的导数，[q,d]=polyder(a,b)
[q,d]=polyder(a,b);
% q=[2 12 42 32 12], d=[1 8 34 104 209 288 256]
% a(x)/b(x）的导数为 [2x^4+12x^3+42x^2+32^x+12]/[x^6+8x^5+34x^4+104x^3+209x^2+288x+256]

