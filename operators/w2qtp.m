function qtp = w2qtp(qt,w)
    w_qt = [0 w(1) w(2) w(3)]';
    qtp = (1/2)*quatProduct(qt, w_qt);
end