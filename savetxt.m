function savetxt(e,r)
% This function is to save txt file

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to me
% Gmail:liuzheng712
% Thank you !

fid=fopen(e,'w');
[n m]=size(r);
for i=1:n
    for j=1:m
        n=size(r{i,j});
        if n(1)~=0
            fprintf(fid,'%s\n',r{i,j});
        end
    end
end
fclose(fid);
end