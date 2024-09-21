function Cp = adaptiveLaw_Cp(S,Psi)
    Gamma = 300;
    Cp = Gamma*S*(Psi');
end