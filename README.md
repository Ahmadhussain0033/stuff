# System Restrictions

## Architectural Constraints
- The system must contain **3 Register Banks**, each with **16 registers**.  
- Additional registers may be used, but **not as part of the 3 official Register Banks**.  
- **Exactly one core is allowed per circuit**:  
  - One core for **R×C Tiling Matrix Multiplication**  
  - One core for **Systolic Tiling Matrix Multiplication**  
- Registers inside the core or internal Processing Elements **do not count** toward the 16-register-per-bank limit.  
- A **single interface layer** must manage all **RAM ↔ Register transfers** for both circuits.  
- Final matrices must be stored in **Row-Major** or **Column-Major format**.  
- **ROM hardcoding is not allowed**; the circuit must support **all valid instruction combinations**.  

## Instruction Set and Program Constraints
- The system must follow **Instruction Set V1.0 (16-bit)**:  
  - **Opcode**: 4 bits  
  - **Dimension/Config**: 4 bits  
  - **Address/Immediate**: 8 bits  
- Only **4 core instructions** may be used to perform a complete matrix multiplication.  
- Up to **2 additional instructions** may be added for setup/context; opcodes must be selected from the **11 non-reserved opcode slots**.  
- Maximum of **30 instructions** can be stored in Instruction RAM for multiplying all 5 matrix pairs.  
- **Loops are disallowed**. Instruction RAM addressing can change **at most 30 times**.  
- Each circuit requires its **own Instruction RAM**.  

## Memory and RAM Restrictions
- Both the **R×C Tiled Multiplier** and the **Systolic Tiled Multiplier** must use **Instruction RAM**.  
- A single **temporary/interim RAM** may be used for partial sum storage.  
- Maximum matrix dimension is **10×10**.  
- Must multiply **5 matrix pairs sequentially** using a **single uninterrupted instruction sequence**.  
- A **maximum cap on allowed clock cycles** applies (specified separately).  

## Tiling-Specific Restrictions
- The **R×C Tiling** circuit must use **one 4×4 tile core** and no more.  
- The **Systolic Tiling** circuit must use **one systolic tile core** and no more.  
- Both circuits must **load registers and RAM data using the same interface rules**.  

## Logic Component Restrictions
- **Decoders, multiplexers, and control logic** are allowed **only if designed manually** as student-made subcircuits.  
- **Inbuilt decoders, multiplexers, or control elements** from Logisim or other tools are **not permitted**.  

## Execution Requirements
- The architecture must **multiply 5 matrix pairs sequentially in one continuous run**.  
- The full instruction sequence must **fit within the Instruction RAM with no looping**.  
- The system must operate correctly for **every legal instruction set combination and matrix dimension** allowed by the spec.  
- Both circuits (**R×C Tiling** and **Systolic Tiling**) must **comply with Instruction Set V1.0**.  

## Summary of Hard Limits
- **3 Register Banks**, 16 registers each  
- **10×10 maximum matrix size**  
- **5 matrix pairs per execution**  
- **30 total Instruction RAM entries**  
- **4 core instructions**  
- **2 extra context instructions**  
- **1 core per circuit**  
- **16-bit Instruction Set V1.0**



# Circuit-Specific Restrictions and Architecture

## 1. R×C Tiling Matrix Multiplication Circuit

### Architectural Constraints
- **One core only**: 4×4 tile core for matrix multiplication.  
- Registers inside the core or Processing Elements **do not count** toward the 16-register-per-bank limit.  
- Must use **3 Register Banks** (16 registers each) shared across the system.  
- Must use a **single interface layer** for all RAM ↔ Register transfers.  
- Final matrices stored in **Row-Major** or **Column-Major format**.  
- Must support **all valid instruction combinations**; no ROM hardcoding.  

### Instruction Set and Program Constraints
- Uses **Instruction Set V1.0 (16-bit)**:  
  - Opcode: 4 bits  
  - Dimension/Config: 4 bits  
  - Address/Immediate: 8 bits  
- Only **4 core instructions** allowed for matrix multiplication.  
- Up to **2 additional instructions** for setup/context (selected from non-reserved opcodes).  
- Instruction RAM stores **max 30 instructions** for multiplying all 5 matrix pairs.  
- **No loops**; Instruction RAM addressing changes **≤ 30 times**.  
- Own **Instruction RAM required**.  

### Memory and RAM Restrictions
- Must use **Instruction RAM** and optional **temporary RAM** for partial sums.  
- Maximum matrix size: **10×10**.  
- Must multiply **5 matrix pairs sequentially** in a **single uninterrupted instruction sequence**.  

### Tiling-Specific Restrictions
- Uses **only one 4×4 tile core**.  
- Must load registers and RAM data according to **common interface rules**.  

### Logic Component Restrictions
- **Decoders, multiplexers, and control logic** must be **manually designed**.  
- No use of **inbuilt Logisim decoders or control elements**.  

---

## 2. Systolic Tiling Matrix Multiplication Circuit

### Architectural Constraints
- **One core only**: Systolic tile core.  
- Registers inside the core or Processing Elements **do not count** toward the 16-register-per-bank limit.  
- Must use **3 Register Banks** (16 registers each) shared across the system.  
- Must use a **single interface layer** for all RAM ↔ Register transfers.  
- Final matrices stored in **Row-Major** or **Column-Major format**.  
- Must support **all valid instruction combinations**; no ROM hardcoding.  

### Instruction Set and Program Constraints
- Uses **Instruction Set V1.0 (16-bit)**:  
  - Opcode: 4 bits  
  - Dimension/Config: 4 bits  
  - Address/Immediate: 8 bits  
- Only **4 core instructions** allowed for matrix multiplication.  
- Up to **2 additional instructions** for setup/context (selected from non-reserved opcodes).  
- Instruction RAM stores **max 30 instructions** for multiplying all 5 matrix pairs.  
- **No loops**; Instruction RAM addressing changes **≤ 30 times**.  
- Own **Instruction RAM required**.  

### Memory and RAM Restrictions
- Must use **Instruction RAM** and optional **temporary RAM** for partial sums.  
- Maximum matrix size: **10×10**.  
- Must multiply **5 matrix pairs sequentially** in a **single uninterrupted instruction sequence**.  

### Tiling-Specific Restrictions
- Uses **only one systolic tile core**.  
- Must load registers and RAM data according to **common interface rules**.  

### Logic Component Restrictions
- **Decoders, multiplexers, and control logic** must be **manually designed**.  
- No use of **inbuilt Logisim decoders or control elements**.  
