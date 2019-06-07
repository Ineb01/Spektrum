
fs=2000;
len = 0.4;
f1 = 200.3;
[t,x]=generateSinus_(fs,f1,0,len);



zeroFactor = 10;
Xz = fft(x,length(x)*zeroFactor)/length(x);
sz = 0:1/(len*zeroFactor):fs-1/(len*zeroFactor);



len = 4;

[t,x]=generateSinus_(fs,f1,0,len);

X = fft(x)/length(x);
s = 0:1/len:fs-1/len;


figure

plot(s,abs(X), "-",sz,abs(Xz), "-");


legend("Echte Verlängerung","Zero-Padding");
title('Vergleich');
xlabel('f[Hz]');
ylabel('A[1]');

xlim([181 221]);
ylim([0 0.6]);





