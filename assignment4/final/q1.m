n = input("Input n : ");
k = input("Input k : ");

disp(n);
disp(k);

%generate k random numbers
z = unifrnd(0, n, 1, k);

count = 0;

for i = 1:k
    if (z(i)*z(i) <= n)
	count = count + 1;
    end
end

an = n*count/k;

disp(an);
