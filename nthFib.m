function nth=nthFib(n)
j=opibRec(n);
nth=j(end);
end
function f=opibRec(n)
if n==1
    f=[1];
elseif n==2
    f=[1 1];
elseif n>2
    fPerv=opFibRec(n-1);
    f=[fPerv,fPerv(end)+fPerv(end-1)];
end


end