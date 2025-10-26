🏠 Home of `ThereminQ - QuantOPS` ⚛️ a Cloud ☁️ Native Toolbox ⚒️ for Quantum Workloads 👷 and Visualisations 🖼️ 

<img width="5978" height="1578" alt="thereminq-wide" src="https://github.com/user-attachments/assets/272a9fdc-d924-4771-850c-d100f23562f6" />



## Project Overview

This repository serves as the central build system for the `ThereminQ - QuantOPS` project, a comprehensive, cloud-native toolbox for quantum computing workloads and visualizations. It is designed to automate the build process for a suite of Docker container images, each containing a specific component of the ThereminQ ecosystem. The project leverages a Docker-in-Docker (dind) approach to create a self-contained build environment capable of producing a wide range of container images for quantum simulations, AI agent integration, and more.

## Components

The `ThereminQ - QuantOPS` ecosystem is composed of several key components, each housed in its own repository and built as a distinct Docker container image. These components are:

- **`twobombs`**: The core repository containing the build system itself. It orchestrates the building of all other components.
- **`deploy-nvidia-docker`**: A utility for setting up the NVIDIA Docker runtime, enabling GPU acceleration within Docker.
- **`cudacluster`**: A component for creating and managing CUDA clusters for distributed GPU computing tasks.
- **`qrackmin`**: A HPC QC package with support for various backends, including CUDA, OpenCL (pocl), Qiskit, AWS BraKET etc.
- **`thereminq-classiq`**: Integration with the `Classiq` platform for quantum algorithm design leveraging `C` and `OpenCL`.
- **`thereminq-bonsai`**: Integration with the Bonsai platform for visualisations in `ThereminQ-Classic`.
- **`thereminq-tensors`**: Focused on tensor network simulations for quantum circuits, for much larger and complex systems.
- **`thereminq-llama`**: Integration with large language models (LLMs) providing AI agent capabilities.
- **`thereminq-pqc`**: A component for experimenting with Post-Quantum Cryptography solutions.
- **`thereminq-examples`**: A collection of examples demonstrating how to use the various components of the `ThereminQ` suite.

## Build System

The build system is designed to be self-contained and automated, using a Docker-in-Docker (dind) approach. The key components of the build system are:

- **`Dockerfile`**: This file defines the build environment. It starts with a base image containing Docker (`cruizba/ubuntu-dind`), installs necessary dependencies like `docker-buildx` and `git`, and clones all the component repositories into the `/build` directory.

- **`buildall.sh`**: This is the main orchestration script. When executed, it performs the following steps:
  1. Sets up a local Docker registry and a web UI for browsing the registry.
  2. Builds the main `twobombs/twobombs` builder image using the `Dockerfile`.
  3. Starts the build process for each component in separate, detached Docker containers. Each container uses the `twobombs/twobombs` image and runs a specific build script (e.g., `qrackmin.sh`, `thereminq-llama.sh`).

- **Component Build Scripts (`runfiles/*.sh`)**: Each component has its own build script located in the `runfiles` directory. These scripts contain the specific `docker build` commands and logic required to build the container images for that component.

- **`publish-*.sh` Scripts**: These scripts are used to publish the built container images from the local registry to Docker Hub. They pull the images from the local registry, retag them with the appropriate Docker Hub repository name, and then push them.

## Usage

To use the build system to build all the `ThereminQ - QuantOPS` container images, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/twobombs/twobombs.git
   cd twobombs
   ```

2. **Run the `buildall.sh` script:**
   ```bash
   docker run -ti --privileged --net=host twobombs/twobombs bash buildall.sh
   ```
   This command will start the build process. The `-ti` flags allocate a pseudo-TTY and keep stdin open, `--privileged` is required for Docker-in-Docker, and `--net=host` allows the containers to share the host's network.

3. **Monitor the build process:**
   You can monitor the build process by viewing the logs of the individual build containers. Use `docker ps` to list the running containers and `docker logs -f <container_name>` to view the logs of a specific container.

4. **Browse the local registry:**
   Once the builds are complete, the container images will be available in the local Docker registry. You can browse the registry by opening a web browser and navigating to `http://localhost`.

5. **Publish the images (optional):**
   To publish the images to Docker Hub, you will need to have Docker Hub credentials configured on your machine. Then, you can run the appropriate `publish-*.sh` script to publish the images for a specific component. For example, to publish the `qrackmin` images, you would run:
   ```bash
   ./publish-qrackmin.sh
   ```

---

- 🔭 I’m currently working on [QC Circuit simulations](https://github.com/twobombs/thereminq-tensors) and [PQC PoCs](https://github.com/twobombs/thereminq-pqc) 
- 💬 Ask me about [Quantum AI-Agents](https://github.com/twobombs/thereminq-tensors?tab=readme-ov-file#ollama-open-interpreter-agentops-stack-for-coding-solutions), [Quantum Chemistry](https://github.com/twobombs/thereminq-llama/tree/main) and [fast scrambling](https://youtu.be/5NhJT8rtrOM?si=T28ePIyrzEnLlbxX) for [Great Benefit of Glorious Iterations](https://youtu.be/6Y08Tt51HDQ?si=bhZs23zwc_Atm5dI)
- 📫 How to reach me: [Twitter](https://twitter.com/twobombs)
- ⚡ Fun facts: Twobombs is a BBS handle and derives from an [arcane exception on the AtariST](https://en.wikipedia.org/wiki/Bomb_(icon)#Atari_ST_TOS) - [my Discord](https://discord.gg/wG3gV6zP) (modern BBS)

<br>
<br>
Need advice on ThereminQ QuantOPS QC/AI integrations ?https://calendar.google.com/calendar/u/0/appointments/AcZssZ0AingtQt8lYRrXClamCE3Qo5V76hKk3oibR9s=
<br>
<br>

Some of the agents & models that are used in some of the container images are sometimes modified and/or quantized for their specialized purpose and are pulled at build- and runtime from the [Huggingface repo for ThereminQ](https://huggingface.co/Twobombs)


[![Twobombs's GitHub stats](https://github-readme-stats.vercel.app/api?username=twobombs&theme=city_lights&show_icons=true)](https://github.com/anuraghazra/github-readme-stats)

ThereminQ is a Software and Hardware simulation stack made from a huge number of open source projects - Any and all rights belong to the respective owners

If (your) code resides in any of these container images and you don't want that please let me know <br>

[Code of conduct : Contributor Covenant](https://github.com/EthicalSource/contributor_covenant)

