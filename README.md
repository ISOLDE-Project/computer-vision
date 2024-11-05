# ResNet18 as backbone in  Driver Monitoring Systems

## Face Recognition
Face Recognition can be used in two main contexts:  
- Face Verification (One-to-One mapping): **Is this person "X"?**  -- checking if a face matches a specific known identity.
- Face Identification (One-to-Many mapping ): **Who is this person?**  -- Identifying a person by comparing his/her face against a database of  known faces.  

Face Recognition can be divided into following steps:

- **Face detection**  — Detecting the face(s) from the input image.
- **Feature extraction** — Extracting facial landmarks from the face boundary detected in the input image.
- **Face classification** — Classifying the face based on extracted facial landmarks, i.e. **Is this person "X"?**(verification) or **Who is this person?**(identification)

## ResNet18
It can be used as:   
- **Feature extraction** in a Face Recognition pipeline
- backbone for various computer vision tasks.

When used as a backbone, ResNet18 can help in the following use cases:

1. Driver Identification/Authentication (Face Verification)
Use Case: Identify the driver using face recognition to personalize settings such as seat position, climate control, and music preferences.
 FaceNet using ResNet18 architecture: ResNet18 can be used as the backbone for facial landmark detection, like eyes, nose, and mouth  which  then are used for driver authentication.

2. Driver Drowsiness Detection
Use Case: Monitor the driver’s facial expressions, especially eye closure, yawning, or head tilting to detect signs of drowsiness.
ResNet18 for Feature Extraction: ResNet18 can be used to process images of the driver’s face and eyes, recognizing signs of drowsiness or fatigue.

3. Driver Head Pose Estimation
Use Case: Monitor the driver's head pose to ensure they are focused on the road and not looking away for extended periods.
ResNet18 for Head Pose Estimation: Use ResNet18 as a feature extractor to estimate the driver’s head pose from images, helping in monitoring where the driver is looking.

4. Face Spoofing Detection (Anti-Spoofing)
Use Case: Detect attempts to fool the face recognition system using photos, videos, or masks.
ResNet18 for Anti-Spoofing: Using ResNet18 to analyze subtle details in facial textures and movements can help detect spoofing attacks in biometric systems.

## Automotive Demonstrator -- OpenSource part
The Automotive Demonstrator will feature a DMS which is close source
For the open-source part, the demonstrator will feature:
- ResNet18 -- image classifier
-  **Feature extraction** which can be used in third party Face Recognition pipeline

# Python Installation Guide

## Prerequisites

Before proceeding with the installation, ensure you have **Miniconda** installed at the following location: **~/miniconda3**
  
  
First time:   
```sh
. ./setup.sh 
```

otherwise:  
```sh
. ./eth.sh 
```
## Jupyter Notebooks

When working with notebooks, please select the **isolde-cv** Python environment to ensure all dependencies and configurations are correctly applied.