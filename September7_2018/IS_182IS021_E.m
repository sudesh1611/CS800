% Program to build a pseudo random generator which produces random number on
% giving a seed value

% Roll: 182IS021   Reg No. 182028

% We use linear congruential generator to build this generator and to
% generate next random generator we use equation X_n+1=(a*X_n + c) mod m
% where m, 0<m - modulus
% where a,0<a<m - multiplier
% where c, -1<c<m - increment
% where x_n is start value
        
function IS_182IS021_E()

    % Getting seed value from user
    x=input('Enter the initial seed value : ');
    
    n=input('Enter the number of random numbers you want to generate : ');
    
    % value of m is 2^31 to get 2^31 random numbers
    m=2147483648;
    
    % value to add everytime to previous value
    c=12345;
    
    % Value to multiply each time
    a=1103515245;
    
    fprintf('%d Random numbers using seed %d are \n \t',n,x);
    
    for i=1:n
        
        % Using equation X_n+1=(a*X_n + c) mod m to generate next random
        % number
        x=((a*x)+c);
        x=mod(x,m);
        fprintf('%d\t',x);
    end
    fprintf('\n');
end