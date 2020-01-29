function q3
x=2.5;
temp=1;
e=0.082084998;
for i=1:7
    temp=temp+x^i/factorial(i);
    apx=1/temp;
    err=abs((e-apx)/e);
    fprintf('%1.8f',apx),fprintf('%19.8f\n',err)
end