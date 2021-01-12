sum=2;
fibonacci=2;
oldFibonacci=1;
while fibonacci<4000000
    newFibonacci=fibonacci+oldFibonacci
    if(mod(newFibonacci,2)==0)
        sum=sum+newFibonacci;
    end
    oldFibonacci=fibonacci;
    fibonacci=newFibonacci;
end
sum