%{
DESCRIPTION:
    Calculates the time constant of an electromotive system
INPUT:
    b: Viscous friction coefficient
    Ra: Armature resistance
    Kt: Torque constant
    Ke: Electric constant
    Jm: Motor rotational inertia
OUTPUT:
    k: gain
%}

function k = calc_time_constant(b,Ra,Kt,Ke,Jm)
k = Jm*Ra/(b*Ra+Kt*Ke);
end