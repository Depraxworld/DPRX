# DPRX
# DPRX – Modular x86 Music Workstation 🎹

**An open-source, DIY standalone music workstation built around recycled x86 hardware.**

DPRX is a modular music workstation designed to bring the flexibility of a desktop computer into a compact, dedicated musical instrument.

Inspired by standalone grooveboxes and classic music production workstations, DPRX combines the computing power and software compatibility of an x86_64 platform with a custom-built enclosure, integrated MIDI controller and a dedicated dual-display interface.

Rather than relying on proprietary hardware and closed operating systems, DPRX uses standard PC components and open-source software to create an expandable, repairable and customizable music production environment.

The goal is simple: **the flexibility of a computer, the immediacy of an instrument.**

## ✨ Key Features

### 🖥️ x86_64 Computing Platform

Built around a Dell Wyse 5070 thin client featuring an Intel Celeron J4105 processor.

- Standard x86_64 architecture.
- Upgradeable RAM and SSD storage.
- Native Linux environment.
- Support for desktop DAWs and audio applications.
- Ability to run compatible Windows music software through Wine.

### 🖥️ Dual-Display Architecture

DPRX uses two physically separate displays, each with a dedicated purpose.

- **Main display:** 10.1" Samsung LCD (LTN101NT06), dedicated to the main application and DAW interface.
- **Secondary display:** 7" LAFVIN IPS touchscreen, designed as a dedicated control surface.

The secondary touchscreen is intended to provide independent control interfaces without obstructing the main DAW workspace.

Planned and developed control modes include touchpad, on-screen keyboard, musical keyboard, mixer controls and application navigation.

### 🎛️ Integrated MIDI Controller

An AKAI LPD8 MIDI controller is integrated directly into the custom enclosure.

The original controller electronics are retained while the original casing is removed, allowing the pads and knobs to become part of the workstation's physical control surface.

### 🎧 Dedicated Audio Interface

An M-Audio Fast Track MKII USB audio interface provides dedicated audio input and output.

The design integrates the interface into the enclosure while keeping its physical connections accessible.

### 🧩 Custom 3D-Printed Enclosure

The entire enclosure is designed in OpenSCAD.

The modular mechanical design accommodates the computer, displays, audio interface and MIDI controller, with custom mounting points, ventilation and cable routing.

The enclosure is designed for 3D printing using PETG.

## 🛠️ Bill of Materials (BOM)

### Main Components

| Component | Description |
|---|---|
| Computer | Dell Wyse 5070 Thin Client |
| CPU | Intel Celeron J4105 |
| RAM | 8 GB recommended, upgradeable |
| Storage | SATA / M.2 SSD |
| Main Display | Samsung LTN101NT06 – 10.1" LCD |
| Secondary Display | LAFVIN 7" IPS Touchscreen |
| Audio Interface | M-Audio Fast Track MKII |
| MIDI Controller | AKAI LPD8 |

### Mechanical Hardware

- M4 screws: computer mounting and VESA attachment.
- M3 screws: structural enclosure assembly.
- M2 / M2.5 screws: electronic board mounting.
- 3D-printed mounting posts and brackets.
- PETG filament for the enclosure.

Some electronic components use custom mounting solutions integrated directly into the 3D models.

## 🖨️ 3D Printing & Mechanical Design

All mechanical components are designed using **OpenSCAD**.

The source files and printable STL models are available in the `/3D_Models` directory.

**Printing recommendations:**

- Material: PETG.
- Minimum build plate size: approximately 320 × 320 mm for the main enclosure tray.
- Brim: 10 mm or more recommended for large parts.
- Check individual STL dimensions and print orientation before starting.

The models incorporate tolerances for PETG printing, mounting clearances and cable access.

The enclosure is designed around the actual dimensions of the selected hardware rather than generic component specifications.

## 💻 Software Architecture

DPRX uses a lightweight Linux environment designed to behave more like a dedicated musical instrument than a conventional desktop computer.

| Layer | Technology |
|---|---|
| Operating System | Debian Linux |
| Window Manager | Openbox |
| Audio System | ALSA - PIPEWIRE |
| DAW | REAPER |
| Windows Compatibility | Wine |
| MIDI Controller | USB MIDI / AKAI LPD8 |
| Main Interface | Custom fullscreen launcher |

The software environment is designed to minimize unnecessary background services and provide direct access to music production applications.

The interface aims to provide a simple, keyboard-independent workflow, with the touchscreen acting as a dedicated control interface.


## 🚧 Development Status

DPRX is an evolving DIY project.

The hardware integration, enclosure design and software environment are developed together through iterative testing and modifications.

Some features and control interfaces are still under development.

The repository will progressively include:

- OpenSCAD source files and printable STL models.
- Hardware specifications and assembly documentation.
- Software configuration files and startup scripts.
- MIDI mapping and control interface configurations.
- Build photographs and design updates.

## 📜 Licensing

Different parts of the project use different open-source licenses:

- **Software and scripts:** GNU General Public License v3.0 (GPL-3.0).
- **3D models and mechanical designs:** Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0).

Please refer to the corresponding license files for the applicable terms.

## 🤝 Contributing

DPRX is an independent DIY project, and contributions, modifications, suggestions and alternative implementations are welcome.

Feel free to fork the repository, adapt the hardware, improve the software or build your own version.

**Build it. Modify it. Make music.**

---

*DPRX – A computer designed to become an instrument.*