% Hill Cipher encryption 3*3 
%key=[1 2 1;2 3 1; 2 1 2]; % UVO --> bat
%key =[17 17 5;21 18 21;2 2 19]; % paymoremoney --> LNSHDLEWMTRW
                                %iamengineer --> OEKHCSNSOEPL
key =[6 24 1;13 16 10;20 17 15]; %act -->POH

r = input('enter row/column number:');
p_text = input('enter your plain_text:','s');
p_text = lower(p_text);
lp = length(p_text);
z = mod(lp,r);

if z~= 0
    error= r-z;
for i = 1:error
    p_text(lp+i)='x';
end
end
for i = 1:r:lp
    letter = double(p_text(i:i+r-1))'-97;
    c(i:i+r-1) = mod(key*letter,26);
end
c=char(c+65)

