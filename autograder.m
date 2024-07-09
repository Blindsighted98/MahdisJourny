function logilogi=autograder(F1,F2,varargin)
%if length(varargin)==1
    %logilogi=F1(varargin{1})==F2(varargin{1});
%else
    sss=length(varargin);
    Y1s={};
    Y2s={};
    for i=1:1:sss
        Y1s={Y1s,F1(varargin{i})};Y2s={Y2s,F2(varargin{i})};
    end
outi=zeros(1,length(Y1s));
for i=1:length(Y1s)
    outi(i)=isequal(Y1s{i},Y2s{i});
end
logilogi=all(outi==1);
end