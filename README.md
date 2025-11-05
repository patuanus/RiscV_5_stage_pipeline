# CONTENT
* RISC-V ISA32
* Features
* Microarchitecture
* Tools Used 
* Design Steps
* Critical Path (Estimate by calculation)
* Calculation of Max Frequency
* Hazard Handling
* RTL View
* References

# RISC-V ISA32
## Introduction
RISC – V is an open-source RISC processor specification. It was developed at UC, Berkeley. It is the fifth iteration in a series of RISC architectural designs done by UC Berkeley. In this project, 32 – bit Core based on the RISC – V ISA is designed.
## Motivation
x86-based instructions (CISC) are difficult to decode and hence slower to execute. Moreover, since the x86 architecture has very less number of processor registers, most of instructions are executed in the memory or cache, causing more power consumption. The RISC – V Architecture has an advantage here with 31 general-purpose registers. All the instructions are of fixed width (32 – bit).
RISC – V is potentially suitable for various applications ranging from micro-power embedded devices to high-performance server-based cloud multiprocessors. Most importantly, RISC – V is an open-source ISA unlike most other architectures.

# Features
* 32-bit instructions format
* Implemented 27 Instructions of the RV32I Core
* 5 stage pipeline design
* hazard handling

# Mircoarchitecture
This is schematic of design which written by using draw.io
![Sơ đồ RISCV](/image/RISCV_architecture.png)

Instruction set of the processor
![Instruction set](/image/Instruction_set.png)

# Tool Used 
* Vscode
* VCS Synopsys
* Online RISC-V Assembler - [Link](https://riscvasm.lucasteske.dev/#)
* Design Compiler (dc_shell) Synopsys

# Design Steps
* Implement Load Word Instruction first
* Then Store Word Instruction
* Modify datapath and decoder to include R - type
* Add branch and store instructions (MUX for PC)
* Debug and Verify
* Pipeline the data path and the controller
* Design Hazard Unit
* Debug and verify

# Critical Path
![Instruction set](/image/RISCV_architecture_critical_path.png)

# Calculation of Max Frequency 
At this phase all the calculation based on reference book that didn't contain any delay from cell types in the library at synthesis phase
![Instruction set](/image/table_for_calculation.png)
![Instruction set](/image/Calculation.png)

# Hazard Handling
Occurs when an instruction depends on the results of the previous instruction which is not yet completed.

* **Data Hazards**
	* **Forwarding:** Forward the result from the Memory Stage and the WriteBack stage to the Execute stage.
	* **Stalling (for load word):** Data read from memory is available only at the end of clock cycle. So, we stall the next instructions and forward the memory data from WriteBack stage.

* **Control Hazards**
	* **Flushing:** Whenever the decision is made to take a branch in Execute stage, flush the next two instructions (Decode and Fetch Stages).
	
# RTL View

# References
[1] Digital Design and Computer Architecture RISC-V Edition by Sarah Harris, David Harris
[2] Computer Organization and Design The Hardware Software Interface [RISC-V Edition] by David A. Patterson, John L. Hennessy

