
fs=2000;
len = 0.4;
[t,x]=generateSinus_(fs,200,0,len);
[t,x2]=generateSinus_(fs,300,0,len);

x = [x(1:200) x2(201:800)];

x = x.*[zeros(1,50,1) window(@hann, 100)' zeros(1,200,1) window(@hann, 100)' zeros(1,350,1)];

xH = x.*window(@hann, length(x))';



figure

p = plot(t,x, "-", t, xH, "-",t,window(@hann, length(x)),"-");


xlabel('f[Hz]');
ylabel('A[1]');

