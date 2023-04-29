cn = zeros(1,20);
rn = zeros(1,20);
for i = 2:21
    y = myVander(i);
    cn(i-1) = cond(y);
    b = y * y(:,2);
    xc = y\b;
    rn(i-1) = norm(y(:,2) - xc);
end
lcn = log(cn)/log(10);
lrn = log(rn)/log(10);
N = 2:21;
scatter(N,lcn,'red','filled')
hold on;
scatter(N,lrn,'blue','filled')
hold off;
legend('cn','rn')
xlabel('Matrix dimension N')
ylabel('Values')
% yticks([1e-20, 1e-10, 1e0, 1e10, 1e20, 1e30])
% yticklabels({'1e-20','1e-10','1e0','1e10','1e20','1e30'})
set(gca, 'YTick',[-30 -20, -10, 0, 10, 20, 30])
set(gca, 'YTicklabel',{'1e-30','1e-20','1e-10','1e0','1e10','1e20','1e30'})
axis([2 21 -30 30])
