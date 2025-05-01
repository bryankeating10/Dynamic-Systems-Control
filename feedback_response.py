import numpy as np
import matplotlib.pyplot as plt
import control as ctrl

# Parameters
K = 2
tau = 3
alpha = 0.8

# Define transfer function G(s)
s = ctrl.TransferFunction.s
G = K / (tau * s + 1)
H = 1  # Unity feedback

# Closed-loop system
T = ctrl.feedback(G, H)

# Apply output gain
T_final = alpha * T

# Plot step response
t, y = ctrl.step_response(T_final)
plt.plot(t, y)
plt.title('Closed-Loop Step Response with Output Gain')
plt.xlabel('Time (s)')
plt.ylabel('Output')
plt.grid(True)
plt.show()