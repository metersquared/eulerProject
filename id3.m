num=600851475143;
notMax=true;
while(notMax)
    largestpf=leastPrimeFactor(num);
    num=num/largestpf;
    if(num==1)
        notMax=false;
    end
end
largestpf

function primeFactor=leastPrimeFactor(num)

    for i=2:num
        if(mod(num,i)==0)
            isPrime=true;
            for j=2:i-1
                if(mod(i,j)==0)
                    isPrime=false;
                    break;
                end
            end
            if(isPrime)
                primeFactor=i;
                break
            end
        end
    end
end