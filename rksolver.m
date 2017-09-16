%rk4 solver function
function [xo,to]=rksolver(t,x,u,h,fun)
        k1 = h*feval(fun, t, x, u);
        k2 = h*feval(fun, t+h/2, x+k1/2, u);
        k3 = h*feval(fun, t+h/2, x+k2/2, u);
        k4 = h*feval(fun, t+h, x+k3, u);
        xo = x + (k1+2*k2+2*k3+k4)/6;
        to = t + h;
end
