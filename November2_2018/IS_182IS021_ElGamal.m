function IS_182IS021_ElGamal()

Order_G=11;
g=2;
x=0;
while(x<1 || x>Order_G-1)
    x=input('\nEnter value of x between 1 and 11 : ');
end
h=power(g,x);
fprintf('\nValue of h is : %d',h);

y=0;
while(y<1 || y>Order_G-1)
    y=input('\nEnter value of y between 1 and 11 : ');
end
c1=power(g,y);
fprintf('\nValue of c1 is : %d',c1);

s=power(h,y);

%Getting message from bob
M = input('\nEnter the message to encrypt: ','s');
len_M=length(M);

%Printing ASCII Values
CipherText=0;
fprintf('\nMessage in ASCII is : ');
for i=1:len_M
    for j=0:150
        if strcmp(M(i),char(j))
            CipherText(i)=j;
            fprintf('\t%d',j);
        end
    end
end

end