function Qd = quatRotMd(qt)
    q0 = qt(1);      
    qv = qt(2:4);    
    Qd = (1-2*(qv')*qv)*eye(3)+2*(qv*qv')+2*q0*PCO(qv);
end

