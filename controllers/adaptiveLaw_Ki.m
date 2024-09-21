function Kip = adaptiveLaw_Ki(S,IsgnS)
    Lambda = 300;
    Kip = Lambda*S*(IsgnS');
end

