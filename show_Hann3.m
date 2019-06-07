
fs=2000;
len = 0.4;
f1 = 201;
[t,x]=generateSinus_(fs,f1,0,len);

xH = x.*window(@hann, length(x))' * 2;
xB = x.*window(@bartlett, length(x))' * 2;

XB = fft(xB)/length(x);

XH = fft(xH)/length(x);

zeroFactor = 50;
XBz = fft(xB,length(xB)*zeroFactor)/length(xB);
XHz = fft(xH,length(xH)*zeroFactor)/length(xH);
sz = 0:1/(len*zeroFactor):fs-1/(len*zeroFactor);
s = 0:1/len:fs-1/len;



figure

ax_bart = subplot(2,1,2); % bottom subplot
ax_hann = subplot(2,1,1); % top subplot

plot(ax_bart,s,abs(XB),"-o", sz,abs(XBz),"-");
plot(ax_hann,s,abs(XH),"-o", sz,abs(XHz),"-");

xlim(ax_bart,[181 221]);
ylim(ax_bart,[0 0.6]);
xlim(ax_hann,[181 221]);
ylim(ax_hann,[0 0.6]);

legend(ax_bart,"DFT","DFT mit Zero-padding");
title(ax_bart,'Bartlett');
xlabel(ax_bart,'f[Hz]');
ylabel(ax_bart,'A[1]');

title(ax_hann,'vonHann');
xlabel(ax_hann,'f[Hz]');
ylabel(ax_hann,'A[1]');

