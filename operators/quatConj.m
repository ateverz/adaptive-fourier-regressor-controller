function qc = quatConj(q)
    qc = q;
    qc(2:4) = - q(2:4);
end

