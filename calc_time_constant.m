%{
DESCRIPTION:
    Calculates the time constant of an electromotive system
INPUT:
    b: Viscous friction coefficient (kg*m*s)
    Ra: Armature resistance (Ohms)
    Kt: Torque constant
    Ke: Electric constant
    Jm: Motor rotational inertia (kg*m^2)
OUTPUT:
    tau: Time constant (s)
%}

function tau = calc_time_constant(b,Ra,Kt,Ke,Jm)
tau = Jm*Ra/(b*Ra+Kt*Ke);
end