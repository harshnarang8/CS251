x101 = exprnd(2,1,10);
x102 = exprnd(2,1,100);
x103 = exprnd(2,1,1000);
x104 = exprnd(2,1,10000);
x105 = exprnd(2,1,100000);
x106 = exprnd(2,1,1000000);

x = cell(6);
for i = 1:6
    printf("For size 10^%d : \n",i);
    x{i} = exprnd((1/2),1,10^i);
    [Z m s] = zscore(x{i});
    printf("Mean : %d, Standard Deviation : %d, Difference with actual mean : %d\n",m,s,(m-0.5));
end
