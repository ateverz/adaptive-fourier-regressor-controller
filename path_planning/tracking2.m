function [xid,xidp,xidpp,xidppp] = tracking2(t)
    a = [0.1 0.1 0.1];
    w = [1 1 1];

    xid = [a(1)*cos(w(1)*t) a(2)*sin(w(2)*t) a(3)*cos(w(3)*t)]';
    xidp = [-a(1)*w(1)*sin(w(1)*t) a(2)*w(2)*cos(w(2)*t) -a(3)*w(3)*sin(w(3)*t)]';
    xidpp = [-a(1)*(w(1)^2)*cos(w(1)*t) -a(2)*(w(2)^2)*sin(w(2)*t) -a(3)*(w(3)^2)*cos(w(3)*t)]';
    xidppp = [a(1)*(w(1)^3)*sin(w(1)*t) -a(2)*(w(2)^3)*cos(w(2)*t) a(3)*(w(3)^3)*sin(w(3)*t)]';
end

