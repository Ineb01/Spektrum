
fs=2000;
len = 0.4;
[t,x1]=generateSinus_(fs,200,0,len);
[t,x2]=generateSinus_(fs,300,0,len);

x = [x1(1:200) x2(201:800)];

x = x.*[zeros(1,50,1) window(@hann, 100)' zeros(1,200,1) window(@hann, 100)' zeros(1,350,1)];

xH = x.*window(@hann, length(x))';

XR = fft(x)/length(x);
XH = fft(xH)/length(x);
s = 0:1/len:fs-1/len;

figure

ax_rech = subplot(2,1,1); % bottom subplot
ax_hann = subplot(2,1,2); % top subplot

plot(ax_rech,s,abs(XR),"-");
plot(ax_hann,s,abs(XH),"-");

xlim(ax_rech,[150 350]);
ylim(ax_rech,[0 0.05]);
xlim(ax_hann,[150 350]);
ylim(ax_hann,[0 0.05]);

title(ax_rech,'Rechteck');
xlabel(ax_rech,'f[Hz]');
ylabel(ax_rech,'A[1]');

title(ax_hann,'vonHann');
xlabel(ax_hann,'f[Hz]');
ylabel(ax_hann,'A[1]');