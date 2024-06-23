function maxElement = findMax(v)
%v=v(:);
%base
%maxElement=-Inf;
if size(v,2)==1
    maxElement=v(1)
%recursive case
else
    maxElement=v(1)
    theRest=v(2:end)
    %x=findMax(theRest)
    if maxElement<findMax(theRest)
       maxElement=findMax(theRest)
end
end


