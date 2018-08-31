%Program to find prime factors of a given number by using 
%Fundamental theorem of arithmetic.
%Fundamental theorem of arithmetic states that every positive integer other
%than 1 is either a prime number or it can be represented as the product of
%prime numbers.
function IS_182028_7_C()

    n=input('Enter the number whose prime factors you want(greater than 1) :: ');

    %Checking if number entered by user is greater than 1 or not
    while(n < 2)
        n=input('\nEnter number greater than 1 :: ');
    end
    fprintf('Prime Factors or %d are :: ',n);

    %Getting the number of 2s that divides n
    while(mod(n,2) == 0)
        fprintf('  %d',2);
        n=n/2;
    end

    %At this point n should be odd because all 2s have already been obtained
    %Now at every step we remove prime factors from number and print them
    z=sqrt(n);
    z=int32(z);
    i=3;
    %We are going from 3 to sqrt(n) to find prime factors of n
    while(i<=z)
        while(mod(n,i) == 0)
            fprintf('  %d',i);
            n=n/i;
        end
        i=i+2; %Since there are no even number, we can increment i by 2.
    end

    %This is to check if the entered number is itself a prime number
    if(n>2)
        fprintf('  %d',n);
    end
    fprintf('\n');
end