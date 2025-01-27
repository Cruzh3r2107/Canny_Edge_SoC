# Canny Edge Detector System-on-Chip Design  

This repository contains the implementation of a **Canny Edge Detection System-on-Chip (SoC)** designed using **SystemC**. The project focuses on achieving real-time edge detection for video streams, optimized for use in drones and similar applications.

---

## 📜 Project Description  

The objective was to design a real-time edge detection system capable of processing video streams at 30 FPS. This was achieved by:  
- Profiling and optimizing **SystemC** algorithms for computational efficiency.  
- Implementing **pipelining** and **process parallelization**.  
- Replacing floating-point operations with fixed-point calculations, which enhanced performance while maintaining accuracy.  

---

## 🏆 Achievements  

- **FPS Improvement**: Enhanced frame processing rate from 0.14 FPS to 28.475 FPS.  
- **Precision Optimization**: Boosted performance by 0.5% by transitioning to fixed-point arithmetic without compromising detection accuracy.  

---

## 🛠 Features  

- Modular SoC design using SystemC.  
- Real-time video processing with Gaussian smoothing, gradient computation, non-maximum suppression, and hysteresis thresholding.  
- Optimized for low-power, high-performance embedded systems, ideal for drone applications.  

---

## 🚀 How It Works  

1. **Input**: A video stream in PGM format.  
2. **Gaussian Smoothing**: Removes noise from the video frames.  
3. **Gradient Computation**: Computes the image gradient for edge strength and direction.  
4. **Non-Maximum Suppression**: Suppresses non-edge pixels to thin the edges.  
5. **Hysteresis Thresholding**: Finalizes the edges based on high and low thresholds.  

---

## 📂 Repository Structure  

- **`cannyA9_step2.cpp`**: Main SystemC implementation of the Canny Edge Detector.  
- **Input Files**: Sample PGM video frames.  
- **Output**: Processed frames with detected edges saved as PGM images.  

---

## 🖥 Usage  

1. Clone the repository:  
   ```bash
   git clone https://github.com/your-username/canny-edge-detector-soc.git
   cd canny-edge-detector-soc
