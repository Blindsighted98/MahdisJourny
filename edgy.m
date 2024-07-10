function M=edgy(input)
x=[-1,0,1;-2,0,2;-1,0,1];
y=[1,2,1;0,0,0;-1,-2,-1];
[a,b]=size(input);
M=zeros(a,b);
for i=2:a-1
    for j=2:b-1
        A=double(input(i-1:i+1,j-1:j+1));
        pre_sx=A.*x;
        pre_sy=A.*y;
        sx=sum(pre_sx(:));
        sy=sum(pre_sy(:));
        M(i,j)=sqrt(sx^2+sy^2);
    end
end
M=uint8(M(2:end-1,2:end-1));
end