function [output]=blur(img,w)
%takes the file name and then blur the image
%and then returns the blured image
%'w' is the degree of blluriness

output = uint8(zeros(size(img)));
for row=1:size(img,1)
    for column=1:(size(img,2))
         Rl = max(row-w, 1);
         Rh = min(row+w, size(img,1));
         Cl = max(column-w, 1);
         Ch = min(column+w, size(img,2));
         temp=img(Rl:Rh,Cl:Ch);
         a=sum(temp(:))/(size(temp,1).*size(temp,2));
         output(row,column)=a;          
        end
end

end
