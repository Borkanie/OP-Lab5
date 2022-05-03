clear all
clc
syms x1 x2;
fun=x1.^3+6*x1.^4-3*x2.^2+2*x2.^6
%x1.x2+3*x2+2(x1.^2)+x2.^2
GRADF=gradient(fun)
Hessf=hessian(fun)
[X1,X2]=meshgrid([-3:0.1:3],[-3:0.1:3]);
y=f(X1,X2);
contour(X1,X2,y)
figure
plot3(X1,X2,y)

tol=0.01;
% Initial Guess (Choose Initial Guesses):
x1(1) = double(1)
x2(1) = double(1)
i=1;
d0 = -gradientf(x1(i),x2(i))
J=-d0;
dk=[d0];
beta=0;
iter=50;
k=0;
while ((norm(J(:,i))>tol) && (k<iter))
    S(1,i) =golden(0,10,0.001,x1(i),x2(i),dk(1,i));
    S(2,i) =golden(0,10,0.001,x1(i),x2(i),dk(2,i));
    x1(i+1) = vpa(double(x1(i)+S(1,i)*dk(1,i)),5);
    x2(i+1) = vpa(double(x2(i)+S(2,i)*dk(2,i)),5);
    
    J(:,i+1) =gradientf(x1(i+1),x2(i+1));
    beta(i+1)=norm(J(:,i+1))^2/norm(J(:,i))^2;
    dk(:,i+1)=-J(:,i+1)+beta(i)*dk(:,i)
    k=k+1;
    i = i+1;
end
raspn=double(vpa([x1;x2],4));
raspn(:,length(raspn)-1)
%%
figure
[X1,X2]=meshgrid([-3:0.1:3],[-3:0.1:3]);
contour(X1,X2,f(X1,X2))
hold on
for i=1:length(raspn)
    q=raspn(:,i);
    plot(q(1),q(2),'*')
    hold on
end
