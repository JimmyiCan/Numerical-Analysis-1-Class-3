a1 = -20:1e-4:-1;
y1 = (a1-1)./(1+a1);
a2 = -1:1e-4:0;
y2 = (1-a2)./(1+a2);
a3 = 0:1e-4:1;
y3 = (1+a3)./(1-a3);
a4 = 1:1e-4:20;
y4 = (1+a4)./(a4-1);
a = [a1 a2 a3 a4];
y = [y1 y2 y3 y4];
plot(a,y,'red')
