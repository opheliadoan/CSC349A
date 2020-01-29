function[mt, mv] = q1a(m, c, g, t0, v0, tn, n)
mv = zeros(1, n + 1);
mt = zeros(1, n + 1);
% compute step size h
h=(tn-t0)/n;
% set t, v to the initial values
t = t0;
v=v0;
mv(1) = v0;
mt(1) = t0;
% compute v(t) over n time steps using Euler's method
for i=2:(n+1)
    v=v+(g-c/m*v)*h;
    t=t+h;
    mv(i) = v;
    mt(i) = t;
end