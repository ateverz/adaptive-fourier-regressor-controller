function qR = quatProduct(p,q)
    qR = zeros(4,1);
    qR(1) = p(1)*q(1) - dot(p(2:4),q(2:4));
    qR(2:4) = p(1)*q(2:4) + q(1)*p(2:4) + cross(p(2:4),q(2:4));
end

