# 🎯 Real-Time Physics Simulation with Verlet Integration

An advanced **real-time particle physics simulation** built in **C using OpenGL**, demonstrating numerical precision, GPU-accelerated rendering, and interactive 3D controls.  

This project visualizes thousands of particles moving under realistic forces and constraints — all in real time!

---
## 🎮 Simulation Controls

  V - Add colorful particles to the simulation.
  G - Apply upward force (watch the colors change as particles speed up!
  Arrow Keys - Move the blue container.
  W/S - Zoom camera.
  ESC - Exit.

## 🔬 Technical Highlights

- 🧮 **Verlet Integration:** Stable and accurate numerical method for smooth motion simulation.  
- 💡 **OpenGL Rendering:** Custom vertex and fragment shaders with dynamic lighting and instanced rendering.  
- ⚡ **Real-Time Performance:** Sustains 60+ FPS with thousands of particles on screen.  
- 🕹️ **Interactive Controls:** Manipulate particles, camera, and simulation states with mouse & keyboard.  
- 🧱 **Spatial Optimization:** KD-Tree partitioning for efficient collision detection.  

---

## 🎨 Visual Features

- 🌈 **Velocity-Based Particle Coloring** for stunning motion effects.  
- 🔗 **Physics Constraints**: Collision handling and distance constraints between particles.  
- 🌀 **3D Interactive Camera** with orbit, pan, and zoom.  
- 🧩 **Custom OBJ Model Loader** for external 3D model interaction.  

---

## ⚙️ Performance Optimizations

- 🧵 **Multithreaded Physics Engine** — parallel computation of forces.  
- 🎮 **GPU-Accelerated Rendering** with instanced drawing for thousands of particles.  
- ♻️ **Efficient Memory Management** for large-scale systems.  

---

## 🛠️ Tech Stack

| Component | Technology |
|------------|-------------|
| **Language** | C |
| **Graphics API** | OpenGL |
| **Libraries** | GLFW, GLEW, (optional) GLM |
| **Threading** | POSIX Threads (pthreads) |
| **Shaders** | Custom Vertex & Fragment Programs |

---

## 🧭 Getting Started

### 🪜 1️⃣ Clone the Repository
```bash
git clone https://github.com/your-username/verlet-physics-simulation.git
cd verlet-physics-simulation
