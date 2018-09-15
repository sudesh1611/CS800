%Program to find n-digit (decimal) number which leaves a
%remainder of r when divided by 7, 9 and 11.

% Roll: 182IS021   Reg No. 182028


function IS_182IS021_F()

    fprintf('Program to find n-digit (decimal) number which leaves a remainder of r when divided by 7, 9 and 11\n');
    n=-1;
    magic =7*9*11;
    % Loop will run until user doesn't input a valid value of n
    while(n<1)
        n=input('Enter the value of n (greater than 0) : ');
    end
    r=input('Enter the value of r : ');
    
    % In case, user inputs remainder greater than modulus
    r=mod(r,magic);
    
    % In case, remainder is negative
    if(r<0)
        r=r+magic;
    end
    
    % In case, number of digits is less than the number of digits of 7*9*11
    if(n<3)
        % Checking if remainder is 1 digit and n == 1
        z=int32(floor(r/10));
        if(z==0 && n==1)
            fprintf('\n%d is a %d digit number which upon dividing by %d results in remainder %d',r,n,magic,r);
            fprintf('\n');
            return;
        end
        % Checking if remainder is 2 digit and n == 2
        z=int32(floor(r/100));
        if(z==0 && n==2)
            fprintf('\n%d is a %d digit number which upon dividing by %d results in remainder %d',r,n,magic,r);
            fprintf('\n');
            return;
        end
        fprintf('\n z===== %d',z);
        % Checking if remainder digits and n digits mismatch
        fprintf('\nThere is no %d digit number which upon dividing by %d results in remainder %d',n,magic,r);
        fprintf('\n');
        return;
    end
    
    
    for i=(10^(n-1)):((10^n)-1)
        if(mod(i,magic)==r)
            fprintf('\n%d is a %d digit number which upon dividing by %d results in remainder %d',i,n,magic,r);
            fprintf('\n');
            return;
        end
    end
    
    fprintf('\n Control should not be here. There is some error in the program...\n');
end