function [a,b]=lin_reg_f(x,y)
%y=ax+b
y=y';
x=x';
x=[x,ones(size(x))];
A=x\y;
a=A(1);b=A(2);
end