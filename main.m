% get list
[filename,filepath]=uigetfile(...
    {'*.txt','(*.txt)';...
    '*.*','All Files (*.*)'}); 
a=cat(2,filepath,filename);


% get list
[filename,filepath]=uigetfile(...
    {'*.txt','(*.txt)';...
    '*.*','All Files (*.*)'}); 
b=cat(2,filepath,filename);
c=input('c=');
d=input('d=');
aa=textread(a,'%s');
bb=textread(b,'%s');

r=do(aa,bb,c,d);
[filename ,filepath]=uiputfile({'*.txt','(*.txt)'},'±£´æ');
e=cat(2,filepath,filename);
fid=fopen(e,'w');
[n m]=size(r);
for i=1:n
    for j=1:m
        fprintf(fid,'%s\n',r{i,j});
    end
end
fclose(fid);