
fs=20000;
len = 0.4;

[t,x]=generateSinus_(fs,0,0,len);

p = plot( t, window(@hann, length(x)), "-",t,window(@bartlett, length(x)),"-");
ylim([0 1.2]);

legend("vonHannFenster","BartlettFenster");

title('vonHann');
xlabel('t[s]');
ylabel('A[1]');
