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
[![Output Voltage](images/Closed-loop Output Reference Tracking.png)](https://github.com/Dhrubajyoti-Sonowal/Flyback-Converter-ACMC-CCM-MATLAB-Simulink/blob/9698e06a50e1b08563c32f8480306f4c152cfc09/Closed-loop%20Output%20Voltage%20Reference%20tracking%20Response%202.png)

### Inductor Current (Average Current Mode Control)
![Inductor Current](images/inductor_current.png)

### Load Transient Response
![Load Transient](images/load_transient.png)

### PWM Control Signal
![PWM Signal](images/pwm_signal.png)

---

## Block Diagram

![Control Block Diagram](images/block_diagram.png)

---

## How to Run

1. Clone this repository  
2. Open MATLAB/Simulink  
3. Run `flyback_acmc_ccm.slx`  
4. Observe waveforms in scopes  
5. Analyze frequency responses using `transfer_function_analysis.m`  

---

##  Repository Structure
