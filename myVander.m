function VN = myVander(N)
VN = ones(N,N);
x = randn(N,1);
    for i = 1:N
        VN(:,i) = x.^(i-1);
    end

cn = cond(VN);
b = VN * x;
xc = VN\b;
rn = norm(x - xc);

disp('The Vandermonde matrix is')
disp(VN)

fprintf('The condition number cn is \n')
disp(cn)

fprintf('The result of b = VN * x0 is \n')
disp(b)

fprintf('The new perform xc = VN/b = \n')
disp(xc)

disp('The norm of the difference between the computed and the starting xo is \n' )
disp(rn)


end