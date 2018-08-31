%Program to find if a number is permutable prime or not 
%A permutable prime is a number whose all permutations are prime
%We will get every permutations of the number and will check if it is prime
%or not
function IS_182028_7_H()

    n=input('Enter the number to find out if it is permutable prime or not :: ');

    %Checking if number entered by user is greater than 1 or not
    while(n < 2)
        n=input('\nEnter number greater than 1 :: ');
    end

    %Getting the length of the number
    n=num2str(n);
    l=length(n);
    
    %Getting all the permutations of the number
    p=perms(n);
    
    %Checking if all the numbers are prime or not
    for i=1:size(p,1)
        f='';
        
        %Getting all the elements of a row
        for j=1:l
            f=strcat(f,p(i,j));
        end
        %If a number is not prime than print and exit
        if(isPrime(str2num(f)) == 0)
            fprintf('Given combination %s number is not a permutable prime\n',f);
            return;
        end
    end
    
    %If control reaches here, it means all permutations of number are prime
    %and it is a permutable prime number.
    fprintf('Given number is a permutable prime\n');
end

%Function to check if a number is prime or not
function s=isPrime(n)
for i=2:sqrt(n)
    if(mod(n,i)==0)
        s=0;
        return;
    end
end
s=1;
return;
end