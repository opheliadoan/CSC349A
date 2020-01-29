function Euler2(k, Ta, t0, T0, tn, n)
fprintf('values of t   approximation of T(t)\n')
fprintf('%8.3f', t0), fprintf('%19.4f\n', T0)
h=(tn-t0)/n;
t=t0;
T=T0;
for i=1:n
    temp=-k*(T-Ta);
    T=T+temp*h;
    t=t+h;
    fprintf('%8.3f',t), fprintf('%19.4f\n',T)
end
