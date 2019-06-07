
fs=20000;
len = 0.4;
f1 = 201;
[t,x]=generateSinus_(fs,f1,0,len);

plot(t(1:450),x(1:450), "-", t(7550:8000)-0.35,x(7550:8000), "-");
xlim([0 0.05]);
ylim([-1.2 1.2]);

legend("Anfang","Ende");

title('Leakage');
xlabel('t[s]');
ylabel('A[1]');
