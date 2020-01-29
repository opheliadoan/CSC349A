% m: mass of falling object
% c: drag coefficient
% g: gravity constant
% t0: initial time, v0: initial velocity
% tn: final time at which the velocity is to be computed
% n: number of time steps into wich [t0, tn] is divided
function [mt, mv] = q1b(m, c, g, t0, v0, tn, n)
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
    v=v+(g-c/m*v)*h;
    t=t+h;
    mt(i)=t;
    mv(i)=v; 
end