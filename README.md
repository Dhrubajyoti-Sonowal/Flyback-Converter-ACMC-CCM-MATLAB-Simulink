# Flyback Converter with Average Current Mode Control (ACMC)

This repository contains the complete design, analysis, and simulation of a **Continuous Conduction Mode (CCM) Flyback DC–DC Converter** using **Average Current Mode Control (ACMC)** in MATLAB/Simulink.

---

##  Project Overview

- **Converter Type:** Flyback DC–DC Converter  
- **Operating Mode:** Continuous Conduction Mode (CCM)  
- **Control Technique:** Average Current Mode Control (ACMC)  
- **Switching Frequency:** 100 kHz (update if different)  
- **Magnetizing Inductance:** Lm = 200 μH  
- **Software:** MATLAB/Simulink  

---

##  Key Contributions

- Derived **control-to-output** and **current-loop plant transfer functions** using **circuit averaging technique based on energy conservation**  
- Analyzed frequency-domain behavior of the converter  
- Identified and addressed the **Right-Half-Plane (RHP) zero** limitation  
- Designed **two-loop compensator architecture**:
  - Inner current loop: crossover = **20 kHz**, phase margin = **60°**
  - Outer voltage loop: crossover = **1.32 kHz**, phase margin = **55°**
- Validated design through MATLAB/Simulink simulations  
- Verified reference tracking, line regulation, and load transient performance  

---

##  Key Observations

- ACMC provides **inherent input voltage feedforward** through the inner current loop  
- Superior **line regulation** compared to voltage-mode control  
- **RHP zero at 56.73 kHz** limits outer voltage loop bandwidth  
- CCM operation maintained across the operating range  
- Lm = 200 μH found adequate for given load and switching frequency  



##  Simulation Results

### Output Voltage Regulation
![Output Voltage Regulation](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/3a42af312740139c0ecc6981518b3e01e3fd9d3e/Closed-loop%20Output%20Voltage%20Reference%20tracking%20Response.png)
### Inductor Current and PWN signal (Average Current Mode Control)
![Inductor Current Tracking](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/3a42af312740139c0ecc6981518b3e01e3fd9d3e/Inductor%20Current%20and%20Control%20Signal.png)

### Load Transient Response
![Response to Load Changes](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/05877f3e4bebe32d1a4c0020f6a4dd9ae9614b7a/Output%20Voltage%20Response%20to%20load%20changes.png)

---

## Simulink Model

![Simulink Model](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/1dfa19cb3162491a1a4afdcda4cf8f32d9a11960/Flyback%20Simulink%20model.png)

---

## Below are the Simulation files

1. [Simulink slx file](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/91a9066abf76f20de98d08dbff251abf2855cb7f/Flyback.slx)  
2. [Plant Transfer function and bodeplot code](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/db333d34079284a7121d6738b35f2d33b0c71f18/IL_D.m)   
3. [Inner Loop Transfer function and bodeplot code]  
4. [Outer Loop Transfer function and bodeplot code]  
  


