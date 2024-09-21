function [tau, thrust, s, qte] = ctrl_santibanez(t, alpha, s0, Kd, m, k, zd, qtd, wd,qt, w, xi, xip)
    g = 9.81;

    Qd = quatRotMd(qtd);

    qtdc = quatConj(qtd);
    qte = quatProduct(qt,qtdc);

    kp = 20;
    kv = 15;
    D  = 0.3;
    gamma = 10;


    qtp = w - wd;
    qt = (Qd')*qte(2:4);

    %s = qtp + alpha*qt;

    s = qtp + alpha*tanh(gamma*qt);

    

    tau = - kp*tanh(gamma*qt) - kv*qtp - D*sign(s);

 
%     s = qtp + alpha*(Qd')*qte(2:4) - s0*exp(-k*t); 
% 
%     tau = -Kd*s;

    % thrust
    ts = 0.5;
    kt = trusth_controlPD_tunning(ts);

    thrust = m*(kt(1)*xip(3) + kt(2)*(xi(3)-zd)+g);
end