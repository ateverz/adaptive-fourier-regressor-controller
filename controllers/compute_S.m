function s = compute_S(alpha,qt,qtd,w,wd)

    Qd = quatRotMd(qtd);

    qtdc = quatConj(qtd);
    qte = quatProduct(qt,qtdc);

    we = w - wd;

    s = we + alpha*(Qd')*qte(2:4); 
end

