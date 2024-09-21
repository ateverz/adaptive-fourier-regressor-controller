function W = matrixW(rpy)
    phi = rpy(1);
    tht = rpy(2);

    W = [1 0 -sin(tht); 
         0 cos(phi) sin(phi)*cos(tht); 
         0 -sin(phi) cos(phi)*cos(tht)];
end

