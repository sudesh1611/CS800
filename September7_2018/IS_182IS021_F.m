%Program to calculate a^k(mod b) 

% Roll: 182IS021   Reg No. 182028

%First we will calculate a^1(mod b) and will store the result
%Then, we will calculate a^2(mod b) by multipling result of a^1(mod b) with
%a and then taking mod b and will store this result
%So, a^k (mod b) = ((a^k-1(mod b))*a) (mod b)

function IS_182IS021_F()

    fprintf('Program to calculate a^k(mod b)\n');

    a=input('Enter the value of a : ');
    k=input('Enter the value of k : ');
    b=input('Enter the value of b : ');

    %Calculating a^1 (mod b) and storing in temp variable
    temp=mod(a,b);
    
    fprintf('%d^1(mod %d) = %d',a,b,temp);
    fprintf('\n');
    
    for i=2:k
        %Calculating (a^i-1(mod b))*a (mod b)
        temp=temp*a;
        temp=mod(temp,b);
        
        %Printing a^i (mod b)
        fprintf('%d^%d(mod %d) = %d',a,i,b,temp);
        fprintf('\n');
    end

    %Printing Final Answer
    fprintf('Result of %d^%d(mod%d) is : %d',a,k,b,temp)
    fprintf('\n');
end