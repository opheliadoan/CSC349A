% m: mass of falling object
% c: drag coefficient
% g: gravity constant
% t0: initial time, v0: initial velocity
% tn: final time at which the velocity is to be computed

function Euler(m, c, g, t0, v0)
fprintf('values of t    approximations v(t) \n')
fprintf('%8.3f', t0), fprintf('%19.4f\n', v0)
% compute step size h
h=2;
% set t, v to the initial values
t=t0;
v=v0;
% compute v(t) over n time steps using Euler's method
for i=1:50
    v=v+(g-c/m*v)*h;
    t=t+h;
    fprintf('%8.3f',t), fprintf('%19.4f\n', v) 
end