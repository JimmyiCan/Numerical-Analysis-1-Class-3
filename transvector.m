function fu = transvector(u, a)
A = [1 a; a 1];
fu = u' * A * u;
scatter(a,fu,'filled')
hold on;
