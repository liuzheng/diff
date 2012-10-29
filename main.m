
% get list
[filename,filepath]=uigetfile(...
    {'*.txt','Subripper (*.txt)';...
    '*.*','All Files (*.*)'}); 
a=cat(2,filepath,filename);


% get list
[filename,filepath]=uigetfile(...
    {'*.txt','Subripper (*.txt)';...
    '*.*','All Files (*.*)'}); 
b=cat(2,filepath,filename);
c=input('c=');
d=input('d=');
do(a,b,c,d)