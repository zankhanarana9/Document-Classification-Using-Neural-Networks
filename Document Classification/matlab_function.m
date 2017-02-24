function [  ] = matlab_function( filename, j )
%MATLAB_FUNCTION Summary of this function goes here
%   Detailed explanation goes here

load('net1.mat')
a=dlmread(filename);
for i=1:3
s=(sim(net1,a(:,i)));
p(:,i)=s;
end
save(strcat('C:\Users\zankhana\Documents\project final\output',num2str(j),'.txt'),'p','-ascii');
disp(p);

exit;

end



