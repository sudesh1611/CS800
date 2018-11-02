function IS_182IS021_RSA()
clc();
p=0;
q=0;
while(p<2)
    p = input('\nEnter the value of p(Prime number greater than 5): ');
end
while(q<2)
    q = input('\nEnter the value of q(Prime number greater than 5): ');
end

%Calculating n
n=p*q;
fprintf('\n%d',n);

%Calculating Phi
Phi=(p-1)*(q-1);
fprintf('\nPhi = %d',Phi);

%Getting the the value of e
x=2;e=1;
while x > 1
    e=e+1;
    x=gcd(Phi,e);
end

%Getting Inverse of e
d=modInverse(e,Phi);

fprintf('\nPublic key e = %d',e);
fprintf('\nPrivate key d = %d',d);

%Getting message from user
M = input('\nEnter the message to encrypt: ','s');
len_M=length(M);

%Printing ASCII Values
CipherText=0;
fprintf('Message in ASCII is : ');
for i=1:len_M
    for j=0:150
        if strcmp(M(i),char(j))
            CipherText(i)=j;
            fprintf('\t%d',j);
        end
    end
end

%Encrypting every character

for i=1:len_M
   CipherText(i)=encrypt(CipherText(i),e,n);
end

%Displaying Encrypted Message
fprintf('\nMessage after encryption is:')
for i=1:len_M
    fprintf('\t%d',(CipherText(i)));
end

%Decrypting Every Character
DeCipherText=0;
for i=1:len_M
   DeCipherText(i)=encrypt(CipherText(i),d,n);
end

%Displaying Encrypted Message
fprintf('\nMessage after Decryption is:')
for i=1:len_M
    fprintf('\t%c',char(DeCipherText(i)));
end
fprintf('\n');
end

%EncryptionDecryption
function z=encrypt(m,e,n)
    z=mod(m,n);
    for i=2:e
       z=z*m;
       z=mod(z,n);
    end
end

%Inverse Calculation
function g=modInverse(a,n)  
    a = mod(a,n);
    for g=1:n-1
       if(mod(a*g,n)==1)
          return;
       end
    end
end