
fs=20000;
len = 0.4;
f1 = 201;
[t,x]=generateSinus_(fs,f1,0,len);

xH = x.*window(@hann, length(x))';


p = plot(t,x, "-", t, xH, "-",t,window(@hann, length(x)),"-");
ylim([-1.2 1.2]);

legend("Normal","vonHann","vonHann Fenster");

title('vonHann');
xlabel('t[s]');
ylabel('A[1]');

p(3).LineWidth = 4;
