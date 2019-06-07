function [t,x] = generateSinus_(fs,f1,f2,len)
% fs ....... Abtastfrequenz
% f1,f2 .... Signalfrequenzen
% len ...... Länge des erzeugten signals

t = 0:1/fs:len-1/fs;
x = sin(2*pi*f1*t)+sin(2*pi*f2*t);
end

