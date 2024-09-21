function wp = attitudeDynamics(J, tau, w)
    wp = J\tau-PCO(w)*w;
end