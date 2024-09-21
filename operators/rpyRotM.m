function Cbr = rpyRotM(rpy)
    psi = rpy(1);
    tht = rpy(2);
    phi = rpy(3);

    Cbr = zeros(3);
    Cbr(1,:) = [cos(psi)*cos(tht) sin(psi)*cos(tht) -sin(tht)];
    
    Cbr(2,1) = cos(psi)*sin(tht)*sin(phi)-sin(psi)*cos(phi);
    Cbr(2,2) = sin(psi)*sin(tht)*sin(phi)+cos(psi)*cos(phi);
    Cbr(2,3) = cos(tht)*sin(phi);

    Cbr(3,1) = cos(psi)*sin(tht)*sin(phi)+sin(psi)*sin(phi);
    Cbr(3,2) = sin(psi)*sin(tht)*cos(phi)-cos(psi)*sin(phi);
    Cbr(3,3) = cos(tht)*cos(phi);
end