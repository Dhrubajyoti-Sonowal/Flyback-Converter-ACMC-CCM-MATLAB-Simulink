# Flyback Converter with Average Current Mode Control (ACMC)

This repository contains the complete design, analysis, and simulation of a **Continuous Conduction Mode (CCM) Flyback DC–DC Converter** using **Average Current Mode Control (ACMC)** in MATLAB/Simulink.

---

##  Project Overview

- **Converter Type:** Flyback DC–DC Converter  
- **Operating Mode:** Continuous Conduction Mode (CCM)  
- **Control Technique:** Average Current Mode Control (ACMC)
- **Turns Ratio:** 3:1 
- **Switching Frequency:** 100 kHz
- **Supply:** 5 V to 12 V  
- **Magnetizing Inductance:** Lm = 200 μH  
- **Software:** MATLAB/Simulink  

---

##  Key Contributions

- Derived **control-to-output** and **current-loop plant transfer functions** using **circuit averaging technique based on energy conservation**  
- Analyzed frequency-domain behavior of the converter  
- Identified and addressed the **Right-Half-Plane (RHP) zero** limitation  
- Designed **two-loop compensator architecture**:
  -1 Inner current loop: crossover = **20 kHz**, phase margin = **60°**
  -2 Outer voltage loop: crossover = **1.32 kHz**, phase margin = **55°**
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
2. [Plant Transfer function and bodeplot code](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/69ef25432b2a5e6d8bd653b02f361339bf2a35b4/Tp_.m)  
3. [Inner Loop Transfer function and bodeplot code](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/8aff26ef04857efd3357827b8e16bbc6fa31e72a/IL_D.m) 
4. [Outer Loop Transfer function and bodeplot code](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/36f6c9e8eccf617599ca343fe37791d7dbfcc90b/outer_loop.m)
 ## Project Report PDF
 [Report](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/3b690ac1f3a650ee5732ac7884969bb334d42a32/Flyback_ACMC_Report_compressed.pdf)


