
fs=20000;
len = 0.4;
f1 = 200;
[t,x]=generateSinus_(fs,f1,0,len);

xH = x.*window(@hann, length(x))';


figure

rech = subplot(2,1,2); % bottom subplot
hannF = subplot(2,1,1); % top subplot

plot(rech,t(1:450),x(1:450), "-", t(7550:8000)-0.35,x(7550:8000), "-");
xlim(rech,[0 0.05]);
ylim(rech,[-1.2 1.2]);

legend(rech,"Anfang","Ende");

title(rech,'Rechteck');
xlabel(rech,'t[s]');
ylabel(rech,'A[1]');

plot(hannF,t(1:450),xH(1:450), "-", t(7550:8000)-0.35,xH(7550:8000), "-");
xlim(hannF,[0 0.05]);
ylim(hannF,[-1.2 1.2]);

legend(hannF,"Anfang","Ende");

title(hannF,'vonHann');
xlabel(hannF,'t[s]');
ylabel(hannF,'A[1]');

