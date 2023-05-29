% Hill Cipher decryption 3*3
%clear all
%clc
%key=[1 2 1;2 3 1; 2 1 2]; % UVO --> bat
%key =[17 17 5;21 18 21;2 2 19]; % paymoremoney --> LNSHDLEWMTRW
                                 %OEKHCSNSOEPL --> iamengineerx
key =[6 24 1;13 16 10;20 17 15]; % POH --> act
r = input('enter row/column number:');
C_text = input('enter your cipher_text(note:it must be divisible by the row number you entered before & without space):','s');
C_text = upper(C_text);
lC = length(C_text);
%1st: get key inverse= (det(key))^-1 adj(key)mod26
d = det(key)% get determint of the key
  %1st: get (det(key))^-1 
y=mod(d,26)
a1 = [1 3 5 7 9 11 15 17 19 21 23 25]; 
a2 = [1 9 21 15 3 19 7 23 11 5 17 25]; 
s=12;
 Inv_Det=a2(s);
for i=1:12
    if a1(i)== y
        s=i;
         Inv_Det=a2(s)
    end
    
end
%2nd: get adj(key)
adj = round(inv(key)*d);
adj = mod(adj,26);
%3rd: get key inverse final
Inv_Key = mod(adj.*Inv_Det,26);
%decryption code
for i = 1:r:lC
   l = double(C_text(i:i+r-1))'-65;
   p(i:i+r-1) = mod(Inv_Key*l,26);
end
p=char(p+97)