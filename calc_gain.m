%{
DESCRIPTION:
    Calculates the gain of an electromotive system
INPUT:
    b: Viscous friction coefficient
    Ra: Armature resistance
    Kt: Torque constant
    Ke: Electric constant
OUTPUT:
    k: gain
%}

function k = calc_gain(b,Ra,Kt,Ke)
k = Kt/(b*Ra+Kt*Ke);
end