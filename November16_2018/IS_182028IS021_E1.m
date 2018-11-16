%Program to find multiplicative inverse of a number using euclidean
%algorithm
function IS_182028IS021_E1()
    fprintf('Program to find multiplicative inverse of a(mod m)...\n');
    a=input('Enter the value of a: ');
    m=input('Enter the value of m: ');
    
    %Checking if a and m are CoPrime
    if(gcd(a,m)~=1)
        fprintf('Given numbers are not CoPrime. Therefore inverse does not exist.\n');
        return;
    end

    %Calling extended eucledian function to get inverse
    result=extended_gcd(a,m);
    fprintf('Multiplicative Inverse of a is : %d\n',result);
end


%Function to calculate inverse
function z = extended_gcd(a,m)
    m0=m;
    y=0;
    x=1;
    if(m==1)
        z=0;
        return;
    end
    while(a>1)
        q=floor(a/m);
        t=m;
        m=modd(a,m);
        a=t;
        t=y;
        y=x-q*y;
        x=t;
    end
    %If x is negative
    if(x<0)
        x=x+m0; 
    end    
    %Returning value
    z=x;
    return;
end


%Function to calculate gcd
function z=gcd(a,m)
    if(a>m)
        x=m;
        y=a;
    else
        x=a;
        y=m;
    end
    while(y~=0)
       r=modd(x,y);
       x=y;
       y=r;
    end
    z=x;
    return;
end


%Function to calculate mod
function z=modd(a,m)
    if(a<0)
        while(a<0)
            a=a+m;
        end
        z=a;
        return;
    else
        while(a>=m)
        a=a-m; 
        end
        z=a;
        return;
    end
end