%Program to factor a^m -1 

function IS_182IS021_6()

    clc;
    display('Program to factor a^m - 1.');
    
    %Getting a
    a=0;
    while(a<1)
        a=input('Enter value of a (greater than 0): ');
    end
    
    %Getting m
    m=0;
    while(m<1)
        m=input('Enter value of m (greater than 0): ');
    end
    
    %Calculating a^m -1
    n=power(a,m);
    n=n-1;
    
    %Displaying n
    fprintf('%d^%d - 1 is %d\n',a,m,n);
    
    %Getting Factors of 2 so that we can increment by 2
    factors=[];
    while(mod(n,2)==0)
        factors=[factors,2];
        n=n/2;
    end

    temp=sqrt(n);
    i=3;
    %Will run till square root of n
    while(i<=temp)
        
        %Get all factors of i
        while(mod(n,i)==0)
            factors=[factors,i];
            n=n/i;
        end
        
        %Increment by 2 instead of 1 because all factors of 2 are
        %eliminated
        i=i+2;
    end
    
    %If n is prime
    if(n>1)
        factors=[factors,n];
    end
    
    %Printing Factors
    fprintf('Factors of %d ^ %d - 1 are :\t',a,m);
    sizeFactors=numel(factors);
    for i=1:sizeFactors
        fprintf('%d\t',factors(i));
    end
    fprintf('\n');
end