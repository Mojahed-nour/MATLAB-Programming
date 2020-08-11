function [xl,xu,xr,sign1,ea]=bisection(xl, xu, es)

iter_index = 0;

xrold = Inf;



while (1)

 
 xr = (xl + xu)/2;

 
 if(xr ~= 0)
 ea = abs( (xr - xrold) / xr)* 100;
 end

 
check = equation(xl)*equation(xr);
if sign(check)
    sign1='postive ';
 else
    sign1='Negative ';
end
 %disp([ xl, xu, xr, sign1, ea]);
disp([ xl, xu, xr, equation(xl), equation(xu), equation(xr), ea]);



 check = equation(xl)*equation(xr);
 if(check < 0)
 xu = xr;
 elseif(check > 0)
 xl = xr;
 else
 ea = 0;
 end


 xrold = xr;


 iter_index = iter_index + 1;

 if (ea < es)
 break;
 end
end

function y = equation(x)

y = log(x^4)-0.7;
