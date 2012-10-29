function do=do(a,b,c,d)
% This function is to find the a not include b

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to me
% Gmail:liuzheng712
% Thank you !

if nargin==3
    d=1;
elseif nargin==2
    c=1;
    d=1;
end

for i=1:size(a)
    for j=1:size(b)
        aa=size(double(b{j,d}));
        bb=size(double(a{i,c}));
        if aa(2)~=bb(2)
            continue
        end
        if prod(double(b{j,d})-double(a{i,c}))
            b{j,:}=[];
        end
    end
    
end
do=b;
end
