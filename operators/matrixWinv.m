function Winv = matrixWinv(rpy)
    phi = rpy(1);
    tht = rpy(2);

    Winv = [1 sin(phi)*tan(tht) tan(tht)*cos(phi);
            0 cos(phi) -sin(phi);
            0 sin(phi)/cos(tht) cos(phi)/cos(tht)];
end

