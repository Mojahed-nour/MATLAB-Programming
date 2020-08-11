function [i,arctan,approxi_error]=Macseries_arctan(x,n,iter) 

clc 

%x=input('Please enter the value of x: ') ;

 
 

%n=input('Please enter the value of n: '); 

 
 

%iter=input('Enter the maximum number of iterations: '); 

es= (0.5*10^(2-n) )*100; 

arctan=x; 

 
 

for i=1:iter 

arctan_old=arctan; 

arctan=arctan+(-1)^i * x^(i*2+1)/(i*2+1); 

 
 

approxi_error=abs((arctan-arctan_old)*100/arctan); 

if (approxi_error<=es) 
break 

end 

i = i +1 

end 

 
fprintf('Number of Iterations = %d\n',i) 
fprintf('Final Approximated Result = %.8g\n',arctan); 
fprintf('Percent True Relative Error after %d iterations = %.8g\n',i,approxi_error); 
end 