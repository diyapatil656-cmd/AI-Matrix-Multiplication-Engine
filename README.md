# AI Hardware: 2x2 Matrix Multiplication Engine
A hardware acceleration project implementing a 2x2 matrix multiplication engine in Verilog HDL, designed as a foundational computing block for Neural Networks and AI accelerators.

## 🚀 Project Overview
Artificial Intelligence models rely heavily on Matrix Multiplication (GEMM) routines. This repository contains a synthesizable, high-throughput hardware accelerator designed to multiply two 2x2 matrices containing 4-bit unsigned integer weights. By processing multiplications in parallel, this engine models how modern Tensor Processing Units (TPUs) accelerate deep learning math.

### Technical Specifications:
- **Languages:** Verilog HDL
- **Architecture:** Parallel Arithmetic Multiply-Accumulate (MAC) Structure
- **Data Width:** 4-Bit Input Elements | 9-Bit Output Matrix Precision
- **Target Application:** AI Edge Acceleration & Micro-Architectures
- **Platform:** EDA Playground / Icarus Verilog

---

## 🛠️ Mathematical Implementation
The engine computes the dot product of Input Matrix A and Input Matrix B simultaneously using combinational multiplier logic arrays:

Use code with caution.
| Y00 Y01 |   | A00 A01 |     | B00 B01 |
|         | = |         |  X  |         |
| Y10 Y11 |   | A10 A11 |     | B10 B11 |
- `Y00 = (A00 * B00) + (A01 * B10)`
- `Y01 = (A00 * B01) + (A01 * B11)`
- `Y10 = (A10 * B00) + (A11 * B10)`
- `Y11 = (A10 * B01) + (A11 * B11)`