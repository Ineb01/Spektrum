
fs=2000;
len = 0.4;
f1 = 201;
[t,x]=generateSinus_(fs,f1,0,len);
X = fft(x)/length(x);
s = 0:1/len:fs-1/len;

zeroFactor = 50;
Xz = fft(x,length(x)*zeroFactor)/length(x);
sz = 0:1/(len*zeroFactor):fs-1/(len*zeroFactor);


plot(s,abs(X), "-o",sz,abs(Xz), "-");
xlim([181 221]);
ylim([0 0.6]);

legend("DFT mit Leakage-effekt","DFT mit Zero-padding");

title('Leakage');
xlabel('f[Hz]');
ylabel('A[1]');