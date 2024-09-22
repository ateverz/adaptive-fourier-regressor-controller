function phi = errorSupervisor(tol, nu)
    phi = zeros(3);

    if norm(nu) >= tol
        phi = diag(nu);
    end
end