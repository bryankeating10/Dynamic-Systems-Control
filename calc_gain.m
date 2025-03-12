%{
DESCRIPTION:
    Calculates the gain of an electromotive system
INPUT:
    b: Viscous friction coefficient (kg*m*s)
    Ra: Armature resistance (Ohms)
    Kt: Torque constant
    Ke: Electric constant
OUTPUT:
    k: Gain
%}

function k = calc_gain(b,Ra,Kt,Ke)
k = Kt/(b*Ra+Kt*Ke);
end