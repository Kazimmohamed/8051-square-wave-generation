# 🔧 8051 Square Wave Generation using Interrupt (Keil µVision)

## 📌 Objective
Generate a square wave on pin **P1.0** of the 8051 microcontroller using **Timer0 interrupt** in **Assembly Language**, without using delay loops.

---

## 🛠️ Tools Used
- **Keil µVision** IDE
- **8051 Microcontroller**
- **Assembly Language**
- **Port Window** / **Logic Analyzer** for output
- **Timer0 Interrupt**

---

## 🧠 Concept Overview

This simple experiment demonstrates:
- Use of **Timer0 in Mode 1 (16-bit)**.
- Toggling of **P1.0** upon each **Timer0 overflow interrupt**.
- No delay instructions are used; **interrupt-based toggling** ensures efficient operation.
- **Port 1** shows toggling between `0xFE` and `0xFF` — bit 0 switches between 0 and 1.

---
