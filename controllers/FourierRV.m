function Psi = FourierRV(t,w,m)
    n = m-1;
    trComp = n/2;
    
    sinPsi = zeros(trComp,1);
    cosPsi = zeros(trComp,1);

    for i = 1:trComp
        sinPsi(i) = sin(i*w*t);
        cosPsi(i) = cos(i*w*t);
    end
    Psi = [1; sinPsi; cosPsi];
end
