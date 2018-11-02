function IS_182IS021_Diffie_Hellman()
clc();
p=23;
a=5;

%Alice Part
Alice_key=26;
A_sent=encrypt(a,Alice_key,p);
fprintf('\nKey sent by Alice to Bob is : %d',A_sent);

%Bob Part
Bob_key=19;
B_sent=encrypt(a,Bob_key,p);
fprintf('\nKey sent by Bob to Alice is : %d',B_sent);

%Alice Computes Comman Key
Alice_Common=encrypt(B_sent,Alice_key,p);
fprintf('\nAlice common key : %d',Alice_Common);

%Bob Computes Comman Key
Bob_Common=encrypt(A_sent,Bob_key,p);
fprintf('\nBob common key : %d',Bob_Common);
fprintf('\n');
end

function z=encrypt(m,e,n)
    z=mod(m,n);
    for i=2:e
       z=z*m;
       z=mod(z,n);
    end
end