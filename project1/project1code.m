
num1=3;
num2=5;
maxNum=1000000;

%Rough method:
%Done by checking modulus of each number
sum1=0;
for i=1:maxNum-1
    if(or(mod(i,num1)==0,mod(i,num2)==0))
        sum1=sum1+i;
    end
end
sum1


%Efficient method:
%Find largest multiple, then solve the sum with arithmetic series
product=num1*num2;
counter=maxNum-1;
%Find maximum multiple of all products
maxDivNum1=maxNum-mod(maxNum,num1);
maxDivNum2=maxNum-mod(maxNum,num2);
maxDivProd=maxNum-mod(maxNum,product);
%Arithmetic sum of all results
sum2=(maxDivNum1+num1)*maxDivNum1/num1/2+(maxDivNum2+num2)*maxDivNum2/num2/2-(maxDivProd+product)*maxDivProd/product/2;
sum2