2-Bit Vedic Multiplier in Verilog
This project is a Verilog implementation of a 2-bit Vedic Multiplier. It uses the Urdhva Tiryagbhyam Sutra (meaning "Vertically and Crosswise") from Vedic mathematics, which is known for its efficiency in multiplication. The hardware design is built using fundamental logic gates and Half Adders.

📌 How It Works: The Urdhva Tiryagbhyam Sutra
The Urdhva Tiryagbhyam sutra simplifies multiplication into a series of vertical and crosswise steps. For two 2-bit numbers, A = a₁a₀ and B = b₁b₀, the process is as follows:

Step 1 (Vertical - Right): Multiply the rightmost bits: p₀ = a₀ * b₀. This gives the LSB of the final product (P₀).

Step 2 (Crosswise): Multiply the inner and outer bits and add them: s₁ = (a₁ * b₀) + (a₀ * b₁). This generates the sum (P₁) and a carry-out.

Step 3 (Vertical - Left): Multiply the leftmost bits and add the carry from the previous step: s₂ = (a₁ * b₁) + carry. This generates the final two bits (P₂ and P₃).

⚙️ Hardware Architecture
The Vedic logic is translated into a digital circuit using four AND gates to calculate the partial products and two Half Adders to sum them correctly. This design avoids the complexity of larger adders, making it fast and resource-efficient.

The first Half Adder computes the sum of the crosswise products.

The second Half Adder helps manage the carry propagation to the most significant bits.

The final product, P[3:0], is assembled from the outputs of these components.

🏗️ Project Structure
The repository is organized into three main Verilog files:

.
├── HA.v          # Verilog module for the Half Adder
├── VM_2.v        # Top module for the 2-bit Vedic Multiplier
├── tb_VM_2.v     # Testbench to simulate and verify the multiplier
└── README.md     # Project documentation
⚡ Features
Efficient Logic: Implements the fast Urdhva Tiryagbhyam multiplication algorithm.

Modular Design: Built with a reusable Half Adder module.

Comprehensive Testbench: Includes a tb_VM_2.v file for thorough verification.

High Compatibility: Can be simulated on standard tools like ModelSim, Xilinx ISE, Vivado, or online EDA playgrounds.

▶️ Simulation Results
The testbench (tb_VM_2.v) validates the multiplier's functionality by testing various input combinations. Here are two examples:

Example 1: 1 x 2

a = 2'b01 (1)

b = 2'b10 (2)

Expected Product: 4'b0010 (2)

Example 2: 3 x 3

a = 2'b11 (3)

b = 2'b11 (3)

Expected Product: 4'b1001 (9)

🎯 Applications
This project is a great starting point for:

Understanding the hardware implementation of Vedic mathematics.

Learning modular and structural Verilog programming.

Building a foundational block for larger arithmetic circuits in digital design and FPGA projects.

📜 License
This project is open-source and available under the MIT License. Feel free to use, modify, and distribute it.
