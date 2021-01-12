counter=0;
totalN=10000;
for i=1:totalN
    box=randi(2,4);
    isValid=false;
    for j=1:length(box)
        if(sum(box(j,:)==2))
            isValid=true;
        else
            isValid=false;
            break
        end
        if(sum(box(:,j)==2))
            isValid=true;
        else
            isValid=false;
            break
        end
    end
    if(isValid)
        counter=counter+1;
    end
end
counter/totalN