function xipp = cartesianDynamics(m, thrust, qt)
    g = 9.81;   
    e3 = [0 0 1]';

    % Compute quaternion (qt) in body z-coordinate: qtb
    qtc = quatConj(qt);
    qtxe3 = quatProduct(qt,[0; e3]);
    qtxe3xqtc = quatProduct(qtxe3,qtc);
    qtb = qtxe3xqtc(2:4); 

    % Cartesian Dynamics
    xipp = -thrust*qtb/m+ g*e3;
end

