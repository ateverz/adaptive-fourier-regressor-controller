function quat = rpy2quat(rpy)
    Q = zeros(4,3);
    for i = 3:-1:1
        v = zeros(3,1);
        v(i) = 1;
        Q(:,i) = [ cos(rpy(i)/2); sin(rpy(i)/2)*v];
    end
    quat = quatProduct(quatProduct(Q(:,3),Q(:,2)), Q(:,1));
end

