function Wp = adaptiveLaw_FNN(Gamma,phi, nu, Psi)
    Wp = Gamma*phi*nu*(Psi');
end