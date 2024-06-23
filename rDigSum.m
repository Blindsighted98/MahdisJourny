function digsum=rDigSum(n)
digsum=0;
if n<=9
    digsum=n;
else
    lastDigit=rem(n,10);
    rest_of_the_number=floor(n/10);
    digsum=lastDigit+rDigSum(rest_of_the_number);
    
end
end