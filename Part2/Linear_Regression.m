X=input('please enter the values of x: ');
Y=input('please enter the values of y: ');
z=menu('Enter your required model.:','A) the linear','B) exponential','c) power','d) growth rate model');

switch z
    case 1  %the linear
        x=X;
        y=Y;
    
    case 2  %exponential
        x=X;
        y=log(Y);
      
    case 3  %power
        x=log10(X);
        y=log10(Y);
        
    case 4  %growth rate model
        x=1./X;
        y=1./Y;
end        
%-----------------------------------------%   
n=length(x);
sum_x=sum(x);
sum_y=sum(y);
sum_x2=sum(x.^2);
sum_xy=sum(x.*y);
y_y=sum_y./n;
        % to find: a&b 
eq1=[n sum_x; sum_x sum_x2];
eq2=[sum_y ;sum_xy];
A=linsolve(eq1,eq2);

switch z
    case 1  %the linear
        a=A(1)
        b=A(2)
    
    case 2  %exponential
        a=exp(A(1))
        b=A(2)
      
    case 3  %power
        a=10.^A(1)
        b=A(2)
        
    case 4  %growth rate model
        a=1./A(1)
        b=A(2)./A(1)
end
%-----------------------------------------%        
        % to find: r^2
st=sum((y-y_y).^2);
sr=sum((y-A(1)-x.*A(2)).^2);
coefficient_of_determination=(st-sr)./st
%-------------------------------------------------------------------------%
  %the linear
x_1=X;
y_1=Y;
sum_x_1=sum(x_1);
sum_y_1=sum(y_1);
sum_x2_1=sum(x_1.^2);
sum_xy_1=sum(x_1.*y_1);
eq1_1=[n sum_x_1; sum_x_1 sum_x2_1];
eq2_1=[sum_y_1 ;sum_xy_1];
A_1=linsolve(eq1_1,eq2_1);
a_1=A_1(1);
b_1=A_1(2);
y_y=sum_y_1./n;
st_1=sum((y_1-y_y).^2);
sr_1=sum((y_1-A_1(1)-x_1.*A_1(2)).^2);
r2_1=(st_1-sr_1)./st_1; 
Y1=a_1+b_1.*X;
figure;
subplot(2,2,1)
 plot(X,Y,'o'); 
 hold on;
 plot(X,Y1,'-'); 
 hold off;
 xlabel('x');
 ylabel('y');
 title('Linear modle');
%-----------------------------------------%
  %exponential
x_2=X;
y_2=log(Y);
sum_x_2=sum(x_2);
sum_y_2=sum(y_2);
sum_x2_2=sum(x_2.^2);
sum_xy_2=sum(x_2.*y_2);
eq1_2=[n sum_x_2; sum_x_2 sum_x2_2];
eq2_2=[sum_y_2 ;sum_xy_2];
A_2=linsolve(eq1_2,eq2_2);
a_2=exp(A_2(1));
b_2=A_2(2);
y_y=sum_y_2./n;
st_2=sum((y_2-y_y).^2);
sr_2=sum((y_2-A_2(1)-x_2.*A_2(2)).^2);
r2_2=(st_2-sr_2)./st_2; 
Y2=a_2.*exp(b_2.*X);
subplot(2,2,2)
 plot(X,Y,'o'); 
 hold on;
 plot(X,Y2,'-'); 
 hold off;
 xlabel('x');
 ylabel('y');
 title('exponential modle');
%-----------------------------------------%
  %power
x_3=log10(X);
y_3=log10(Y);
sum_x_3=sum(x_3);
sum_y_3=sum(y_3);
sum_x2_3=sum(x_3.^2);
sum_xy_3=sum(x_3.*y_3); 
eq1_3=[n sum_x_3; sum_x_3 sum_x2_3];
eq2_3=[sum_y_3 ;sum_xy_3];
A_3=linsolve(eq1_3,eq2_3);
a_3=10.^A_3(1);
b_3=A_3(2);
y_y=sum_y_3./n;
st_3=sum((y_3-y_y).^2);
sr_3=sum((y_3-A_3(1)-x_3.*A_3(2)).^2);
r2_3=(st_3-sr_3)./st_3; 
Y3=a_3.*(X).^b_3;
subplot(2,2,3)
 plot(X,Y,'o'); 
 hold on;
 plot(X,Y3,'-'); 
 hold off;
 xlabel('x');
 ylabel('y');
 title('power modle');
%-----------------------------------------%
  %growth rate model
x_4=1./X;
y_4=1./Y;
sum_x_4=sum(x_4);
sum_y_4=sum(y_4);
sum_x2_4=sum(x_4.^2);
sum_xy_4=sum(x_4.*y_4);
eq1_4=[n sum_x_4; sum_x_4 sum_x2_4];
eq2_4=[sum_y_4 ;sum_xy_4];
A_4=linsolve(eq1_4,eq2_4);
a_4=1./A_4(1);
b_4=A_4(2)./A_4(1);
y_y=sum_y_4./n;
st_4=sum((y_4-y_y).^2);
sr_4=sum((y_4-A_4(1)-x_4.*A_4(2)).^2);
r2_4=(st_4-sr_4)./st_4; 
Y4=(a_4.*X)./(b_4+X);
subplot(2,2,4)
plot(X,Y,'o'); 
hold on;
plot(X,Y4,'-');
hold off;
xlabel('x');
ylabel('y');
title('growth rate model');
%-----------------------------------------%   
r2=[r2_1 r2_2 r2_3 r2_4];
r2_of_four_models=[r2_1 r2_2 r2_3 r2_4]
TBM=0;
index=0;
for i=1:4
    if TBM <= r2(i)
        TBM=r2(i);
        index=i;
    else
        TBM=TBM;
        index=index;
    end
end
fprintf('The highest correlation coeffecient is %d ', TBM);
fprintf('and its index is %d\n', index);
%-----------------------------------------% 