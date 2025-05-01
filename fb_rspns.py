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

# Plot Bode plot
plt.figure(figsize=(10, 8))
plt.subplot(2, 1, 1)
plt.title('Bode Plot of Closed-Loop System with Output Gain')
ctrl.bode(T_final, dB=True, Hz=False, plot=True)
plt.subplot(2, 1, 2)
plt.title('Bode Plot of Closed-Loop System with Output Gain (Phase)')
ctrl.bode(T_final, dB=False, Hz=False, plot=True)
plt.show()
