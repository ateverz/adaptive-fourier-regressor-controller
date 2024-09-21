function k = trusth_controlPD_tunning(ts)
    k = zeros(2,1);
    wn = 6/ts;
    k(1) = 2*wn;
    k(2) = wn^2;
end

