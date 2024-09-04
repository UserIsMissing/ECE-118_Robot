# ECE 118 - Final Project Technical Report

## Jack Baskin School of Engineering – ECE 118

**Final Project Technical Report**

- **Instructor**: Gabriel Elkaim
- **Students**: Cole Schreiner, Qingyuan Cao, James Huang
- **Emails**: [caschrei@ucsc.edu](mailto:caschrei@ucsc.edu) | [qcao10@ucsc.edu](mailto:qcao10@ucsc.edu) | [hhuan143@ucsc.edu](mailto:hhuan143@ucsc.edu)
- **Date**: June 14th, 2024

---

### Background

This course, ECE 118/218, is based on the Smart Product Design sequence and focuses on Mechatronics. Mechatronics combines mechanical engineering, electronic engineering, and software engineering to control advanced hybrid systems like planetary rovers, automotive subsystems, and everyday equipment.

---

### Project Specification

Our task was to build an autonomous robot (droid) that could navigate a standardized field, locate and trap targets (balls), and discharge them to an opponent’s field. The robot had to detect collisions, stay within field boundaries, and effectively clean the playing field.

---

### Minimum Specifications

To pass the course, the robot needed to demonstrate trapping or discarding at least 75% of the balls deposited on the field and pushing at least two balls through the slot-door to the opponent’s field.

---

### Design Strategy

Our design focused on creating a reliable robot with minimal electronics for improved reliability. We used two motors per wheel and one motor for the intake, while sacrificing some design space to create a mechanism that opens the gate without electronics.

---

### Sensors & Electronics

We relied on LM393 photoelectric sensors for detecting walls and tape. Additionally, limit switches acted as bumpers for obstacle detection, and the L298N H-Bridge controlled the motors. We used the UNO_32 microcontroller for overall control.

---

### Navigation Strategy

Our robot’s navigation strategy was based on following the field’s geometry, using the walls as a guide. The robot followed a wall-hugging algorithm to collect balls and find the trap door. It utilized infrared sensors and a static tape counter to navigate effectively.

---

### State Machine

The state machine begins in a "random" state, transitioning to a "wallride" state upon wall detection. After following the wall for a set number of passes, the robot transitions to a "deposit" state, where it aligns itself to deposit the balls. Once done, it returns to the "wallride" state.

---

### Final Construction

Please refer to the images in the report for renders and final construction details.

---

For more details, [view the full report](./ECE%20118%20-%20Final%20Project%20Technical%20Report.pdf).
