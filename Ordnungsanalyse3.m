
fs1=2000;
len1 = 0.403;
f1 = 200;
[t1,x1]=generateSinus_(fs1,f1,0,len1);

fs2=2000;
len2 = 0.4;
f2 = 200;
[t2,x2]=generateSinus_(fs2,f1,0,len2);

X1 = fft(x1)/length(x1);

X2 = fft(x2)/length(x2);

s1 = 0:1/len1:fs1-1/len1;
s2 = 0:1/len2:fs2-1/len2;



figure


plot(s1,abs(X1),"-o", s2,abs(X2),"-o");

xlim([181 221]);
ylim([0 0.6]);

legend("normales Spektrum","Ordnungsanalyse");
title('Vergleich');


xlabel('f[Hz]');
ylabel('A[1]');

