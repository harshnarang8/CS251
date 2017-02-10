format long;

n = input("Enter the number : ");
m = input("Enter the power inverse : ");
e = input("Enter the accuracy : ");

j = e;

e = 10^(-1*e);

x = unifrnd(1,n);
disp(x);
d = ((n/(x^(m-1)))-x)/m;
x = x + d;
disp(d);

while(abs(d) >= e)
    d = ((n/(x^(m-1)))-x)/m;
    disp("mark");
    x = x + d;
    fprintf("value of x rn ");
    disp(x);
    disp(d);
end

printf("%0.*f",j,x);
