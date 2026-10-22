# SystemVerilog for Verification — Exercise Solutions

![Language](https://img.shields.io/badge/Language-SystemVerilog-blue.svg)
![Standard](https://img.shields.io/badge/IEEE-1800--2009-informational.svg)
![Status](https://img.shields.io/badge/Status-In%20Progress-brightgreen.svg)

This repository contains my worked solutions, testbenches, and code implementations for the end-of-chapter exercises from the textbook:

> ***SystemVerilog for Verification: A Guide to Learning the Testbench Language Features (Third Edition)***  
> **Authors:** Chris Spear & Greg Tumbush  
> **Publisher:** Springer (ISBN: 978-1-4614-0714-0)

---

## 📖 About This Repository

This project serves as a practical study companion and reference implementation for engineers and students learning hardware verification using SystemVerilog. The solutions focus on building coverage-driven, constrained-random, layered testbenches using Object-Oriented Programming (OOP) principles.

---

## 📂 Chapter Index & Progress

| Chapter | Title | Key Concepts Covered | Folder / Status |
| :--- | :--- | :--- | :--- |
| **Ch. 1** | **Verification Guidelines** | Verification plans, directed vs. constrained-random testing, layered testbench architecture | ⏳ Planned |
| **Ch. 2** | **Data Types** | 2-state/4-state types, packed/unpacked arrays, dynamic arrays, queues, associative arrays, structs, enums, streaming operators | ✅ [Chapter 2 Solutions](./Chapter%202%20Solutions) |
| **Ch. 3** | **Procedural Statements and Routines** | Tasks vs. void functions, `ref` & `const` arguments, default arguments, `automatic` storage, time literals | ⏳ Planned |
| **Ch. 4** | **Connecting the Testbench and Design** | Interfaces, `modport`s, clocking blocks, signal synchronization, `program` blocks, immediate & concurrent assertions | ⏳ Planned |
| **Ch. 5** | **Basic OOP** | Classes, constructors (`new`), handles, static variables/methods, shallow vs. deep copy (`copy`), pack/unpack | ⏳ Planned |
| **Ch. 6** | **Randomization** | `rand`/`randc`, constraint blocks, weighted distributions (`dist`), `inside`, implication (`->`), `solve...before`, array constraints | ⏳ Planned |
| **Ch. 7** | **Threads and Interprocess Communication** | `fork...join` (`join_any`, `join_none`), dynamic threads, `event`s, semaphores, bounded/unbounded mailboxes | ⏳ Planned |
| **Ch. 8** | **Advanced OOP and Testbench Guidelines** | Inheritance (`extends`), polymorphism, virtual methods, `$cast`, blueprint pattern, callbacks, parameterized & singleton classes | ⏳ Planned |
| **Ch. 9** | **Functional Coverage** | `covergroup`, `coverpoint`, user-defined/auto/transition/wildcard bins, `ignore_bins`, `illegal_bins`, cross coverage | ⏳ Planned |
| **Ch. 10** | **Advanced Interfaces** | Virtual interfaces, `typedef` virtual interfaces, parameterized interfaces, procedural code in interfaces | ⏳ Planned |
| **Ch. 11** | **A Complete SystemVerilog Testbench** | End-to-end Squat ATM router verification environment, scoreboards, monitors, generators, and callbacks | ⏳ Planned |
| **Ch. 12** | **Interfacing with C/C++** | Direct Programming Interface (DPI-C), importing/exporting functions and tasks, `chandle`, open arrays | ⏳ Planned |

*(Note: Status indicators will be updated as new chapter folders are pushed to `main`.)*

---

## 🛠️ Prerequisites & Simulation Tools

The SystemVerilog source files (`.sv`) in this repository can be compiled and simulated using any IEEE 1800-compliant EDA simulator:

* **Mentor Graphics / Siemens QuestaSim / ModelSim**
* **Synopsys VCS**
* **Cadence Xcelium / Incisive**
* **Aldec Riviera-PRO**
* **[EDA Playground](https://www.edaplayground.com/)** (for quick browser-based simulation)

---

## 🚀 How to Run the Examples

### Using QuestaSim / ModelSim
```bash
# 1. Create a working library
vlib work

# 2. Compile the SystemVerilog source file
vlog -sv "Chapter 2 Solutions/<filename>.sv"

# 3. Run the simulation in command-line mode
vsim -c work.<top_module_name> -do "run -all; quit"
