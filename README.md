# Vedic Multiplier (2x2) - Verilog HDL

This project implements a **2x2 Vedic Multiplier** using **Verilog HDL**.  
The design is based on the Urdhva Tiryakbhyam Sutra (Vedic Mathematics), which enables fast multiplication by parallel partial product generation and addition.  

## 🚀 Features
- Implements a **2x2 multiplier** using logic gates & half adders  
- Simple and efficient design  
- Includes a **testbench** for simulation in JDOODLE / ModelSim / other simulators  

## 📂 Project Structure
- `VM_2.v` → Vedic Multiplier module  
- `HA.v` → Half Adder module  
- `tb_VM_2.v` → Testbench  

## 🛠 How to Run
1. Open the code in [JDoodle Verilog Compiler](https://www.jdoodle.com/) or any Verilog simulator  
2. Compile & simulate `tb_VM_2.v`  
3. Observe multiplication results in the simulation output  

## 📊 Example Output
Time=0 | a=00 | b=00 | Product=0000 (0)
Time=10 | a=01 | b=01 | Product=0001 (1)
Time=20 | a=10 | b=01 | Product=0010 (2)
Time=30 | a=11 | b=01 | Product=0011 (3)
Time=40 | a=11 | b=11 | Product=1001 (9)
