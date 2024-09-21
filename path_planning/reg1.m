function [qtd,wd] = reg1(rpyd)
    qtd = rpy2quat(rpyd);
    wd = zeros(3,1);
end

