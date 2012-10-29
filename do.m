function do=do(a,b,c,d)
%a=textread('./a.txt','%s')
%b=textread('./b.txt','%s')
%{
[filename,filepath]=uigetfile(...
    {'*.txt','Subripper (*.txt)';...
    '*.*','All Files (*.*)'}); 
%}
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
