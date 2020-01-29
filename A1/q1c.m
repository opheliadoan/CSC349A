
function [mt, mv] = q1c(m, c, g, t0, v0, tn, n)
mt = zeros(1, n+1);
mv = zeros(1, n+1);
% compute step size h
h=(tn-t0)/n;
% set t, v to the initial values
t = t0;
v=v0;
mt(1) = t0;
mv(1) = v0;
% compute v(t) over n time steps using Euler's method
for i=2:(n+1)
    v=(g*m/c)*(1-exp(-((c*t)/m)));
    t=t+h;
    mt(i)=t;
    mv(i)=v; 
end