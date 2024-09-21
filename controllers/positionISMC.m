function [u, up, sigmaPp] = positionISMC(m,qt,xi,xip,xid,xidp,xidpp,xidppp,sigmaP)
    Kp = diag([2 2 2]);
    gammaP = 0.2;
    alphaP = 8;
    
    g = 9.81;
    ez = [0 0 1]';

    xie = xi-xid;
    xiep = xip-xidp;
    
    nuP = xiep + alphaP*xie;

    nurP = nuP + gammaP*sigmaP;

    sigmaPp = sign(nuP);

    xirpp = xidpp - alphaP*xiep - gammaP*sigmaPp;


    YrP = m*xirpp;

    u = - Kp*nurP - m*g*ez + YrP;


    qtc = quatConj(qt);
    qtxe3 = quatProduct(qt,[0; ez]);
    qtxe3xqtc = quatProduct(qtxe3,qtc);
    qtb = qtxe3xqtc(2:4);

    LambdaP = diag(sech(nuP).^2);
    thrust = norm(u);
    up = -(Kp + m*alphaP*eye(3)+m*gammaP*LambdaP)*(g*ez-(thrust/m)*qtb-xidpp)-alphaP*(Kp+m*gammaP*LambdaP)*xiep-Kp*gammaP*tanh(xiep+alphaP*xie)+m*xidppp;
end

