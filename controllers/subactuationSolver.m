function [qtd,wd] = subactuationSolver(u,up)
    if norm(u) ~= 0
        uh = u/norm(u);
    else
        uh = zeros(3,1);
    end
    
    sU3 = sqrt(-2*uh(3)+2);

    qtd = [0.5*sU3 uh(2)/sU3 -uh(1)/sU3 0]';

    Lu3 = norm(u)^3;

    uhp = (((u')*u)*up-((u')*up)*u)/Lu3;

    wd = [uhp(2)-(uh(2)*uhp(3))/(1-uh(3)) -uhp(1)+(uh(1)*uhp(3))/(1-uh(3)) (uh(2)*uhp(1)-uh(1)*uhp(2))/(1-uh(3))]';
end

