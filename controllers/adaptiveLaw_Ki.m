function Kip = adaptiveLaw_Ki(S,IsgnS)
    Lambda = diag([300 300 300]);
    Kip = Lambda*S*(IsgnS');
end

