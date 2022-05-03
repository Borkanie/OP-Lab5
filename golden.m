function [d] = golden(a,b,epsilon,X1_gol,x2_gol,oldStepGolden)
d=b-a; 
while abs(b-a)>epsilon
     d=0.618*(b-a);
     q1=b-d;
     q2=a+d; 
     if fun(q1,X1_gol,x2_gol,oldStepGolden)<=fun(q2,X1_gol,x2_gol,oldStepGolden)
         b=q2;
     else
         a=q1;
     end
end
d=(a+b)/2;
end