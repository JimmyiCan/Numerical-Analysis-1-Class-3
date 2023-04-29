function test_transvector
u = randn(2,1);
for a = -100:1:100
    fu_comp = transvector(u, a);
    fu_true = u(1).^2 + 2*a*u(1)*u(2) + u(2).^2;
    if (abs(fu_true - fu_comp) < 1e-2)
    else
        error('Too large error!')
    end
end
disp('transvector function returns accurate results!')
