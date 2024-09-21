function Wp = matrixWp(rpy, rpyp)
    phi = rpy(1);
    tht = rpy(2);

    phip = rpyp(1);
    thtp = rpyp(2);

    Wp = [0 0 -thtp*cos(tht);
          0 -phip*sin(phi) phip*cos(tht)*cos(phi)-thtp*sin(tht)*sin(phi);
          0 -phip*cos(phi) -thtp*cos(phi)*sin(tht)-phip*cos(tht)*sin(phi)];
end

