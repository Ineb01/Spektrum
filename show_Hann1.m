
fs=2000;
len = 0.4;
f1 = 201;
[t,x]=generateSinus_(fs,f1,0,len);

xH = x.*window(@hann, length(x))' * 2;

XR = fft(x)/length(x);

XH = fft(xH)/length(x);

zeroFactor = 50;
XRz = fft(x,length(x)*zeroFactor)/length(x);
XHz = fft(xH,length(xH)*zeroFactor)/length(xH);
sz = 0:1/(len*zeroFactor):fs-1/(len*zeroFactor);
s = 0:1/len:fs-1/len;



figure

ax_rech = subplot(2,1,2); % bottom subplot
ax_hann = subplot(2,1,1); % top subplot

plot(ax_rech,s,abs(XR),"-o", sz,abs(XRz),"-");
plot(ax_hann,s,abs(XH),"-o", sz,abs(XHz),"-");

xlim(ax_rech,[181 221]);
ylim(ax_rech,[0 0.6]);
xlim(ax_hann,[181 221]);
ylim(ax_hann,[0 0.6]);

legend(ax_rech,"DFT","DFT mit Zero-padding");
title(ax_rech,'Rechteck');
xlabel(ax_rech,'f[Hz]');
ylabel(ax_rech,'A[1]');

legend(ax_hann,"DFT","DFT mit Zero-padding");
title(ax_hann,'vonHann');
xlabel(ax_hann,'f[Hz]');
ylabel(ax_hann,'A[1]');
