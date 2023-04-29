function test_myVander
for N = 1 : 100
    VN = ones(N,N);
    x = randn(N,1);
        for i = 1:N
            VN(:,i) = x.^(i-1);
        end
    VN_true = flip(vander(x),2);
    if (abs(VN - VN_true) < 1e-2*ones(N,N))
    else
        error('Under the tolerence of 1e-2, myVander is valid until N rises to %d',N-1)
    end
end
