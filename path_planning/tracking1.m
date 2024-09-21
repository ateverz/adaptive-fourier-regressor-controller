function [qtd,wd] = tracking1(t,rpy)
    a = [0.1 0.1 0.1];
    w = 1;
    rpyd = [a(1)*sin(w*t) a(2)*cos(w*t) a(3)*sin(2*w*t)]';
    etap = [a(1)*w*cos(w*t) -a(2)*w*sin(w*t) 2*a(3)*w*cos(2*w*t)]';

    W = matrixW(rpy);

    qtd = rpy2quat(rpyd);
    wd = W*etap;
end

