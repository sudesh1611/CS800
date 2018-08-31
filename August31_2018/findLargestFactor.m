function findLargestFactor()

    n=input('Enter the number to find its largest prime factor :: ');

    %Checking if number entered by user is greater than 1 or not
    while(n < 2)
        n=input('\nEnter number greater than 1 :: ');
    end
    
    %Checking if number itself is prime or not
    if (isprime(n) == 1)
        fprintf('\nLargest Prime Factor of the number is %d\n',n);
        return;
    end
    
    z=floor(n/2);
    while(z>1)
        %if number is a factor
       if(mod(n,z) == 0)
           %if factor is prime
           if(isPrime(z)== 1)
               fprintf('\nLargest Prime Factor of the number is %d\n',z);
               return;
           end
       end
       z=z-1;
    end
    
    %Control Won't reach here, ever. But still!
    fprintf('\nSomething is wrong in the program. Debug!!!');
end

%Function to check if a number is prime or not
function s=isPrime(n)
for i=2:sqrt(n)
    if(mod(n,i)==0)
        s=0;%It is not Prime
        return;
    end
end
s=1;%It is prime
return;
end