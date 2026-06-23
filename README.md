# ⚡ Nexus Hybrid Inference Terminal

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Streamlit](https://img.shields.io/badge/Streamlit-FF4B4B?style=for-the-badge&logo=streamlit&logoColor=white)](https://streamlit.io/)
[![Python](https://img.shields.io/badge/Python-3.10-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Groq](https://img.shields.io/badge/Powered%20By-Groq%20LPU-00F5FF?style=for-the-badge)](https://groq.com/)

A containerized, high-performance web dashboard engineered to dynamically orchestrate Large Language Model (LLM) requests. The engine shifts workloads between **Local Edge Runtimes (Ollama)** and hyper-accelerated **Enterprise Cloud Compute (Groq API)** seamlessly using unified OpenAI-compatible data schemas.

---

## 📊 Terminal Dashboard Operational Previews

### 1. Active Cloud Stream (Success Blueprint)
The interface leveraging enterprise-grade cloud LPUs to stream complex technical breakdowns using advanced reasoning frameworks:

![Active Cloud Stream](Screenshorts/dashboard-success.png)

### 2. Defensive Error Architecture (Robust Interception)
Custom-built middleware pipeline that intercepts raw API failure streams (such as decommissioned model endpoints) and renders exact upstream diagnostics back to the user instead of failing silently:

![Defensive Error Architecture](Screenshorts/error-diagnostics.png)

---

## 🏗️ Comprehensive Core Architecture

The infrastructure isolates the frontend environment entirely within a secure Docker container virtualization boundary. To run local compute without draining container resources, the cluster leverages an internal network bridge back to the host operating system.

```text
=========================================================================================
🌐 CLIENT WEB BROWSER  --> [Traffic mapped securely over Port 80]
=========================================================================================
                                       │
                                       ▼
                     ┌───────────────────────────────────┐
                     │ ⚡ Streamlit UI Core Engine        │
                     │    (Isolated inside Docker)       │
                     └─────────────────┬─────────────────┘
                                       │
                      [Dynamic Runtime Route Selector]
                                       │
               ┌───────────────────────┴───────────────────────┐
               ▼                                               ▼
   ┌───────────────────────┐                       ┌───────────────────────┐
   │ 🦙 LOCAL EDGE ROUTE   │                       │ 🚀 CLOUD ACCELERATOR  │
   ├───────────────────────┤                       ├───────────────────────┤
   │ Bridge Network Target │                       │ Secure TLS Endpoints  │
   │ host.docker.internal  │                       │ [api.groq.com/openai](https://api.groq.com/openai)   │
   │       │               │                       │       │               │
   │       ▼               │                       │       ▼               │
   │ Native Ollama Daemon  │                       │ Groq LPU Compute      │
   │ (On-Device Inference) │                       │ (Data-Center Cluster) │
   │   - llama3.2:1b       │                       │   - llama-3.1-8b      │
   │   - qwen2:0.5b        │                       │                       │
   └───────────────────────┘                       └───────────────────────┘
=========================================================================================
⚙️ Feature Matrix ComparisonOperational MetricLocal Edge RuntimeEnterprise Cloud RuntimePrimary EngineOllama Engine (Native Host Daemon)Groq LPU Compute HardwareToken Cost100% Free / Absolute Zero BillingScaled Developer Tier FrameworkPrivacy ProfileSandbox Isolation (Data never leaves machine)Processed via TLS Encrypted Cloud EndpointsHardware SourceLocal Host CPU / Integrated VRAMMassively Parallel Data-Center GPUsPrimary Use CaseOffline Code Generation & Secure DiagnosticsHigh-Speed Context Processing & Complex Logic📂 Production Repository Layoutnexus-hybrid-terminal/
├── Screenshorts/           # Internal repository visualization storage
│   ├── dashboard-success.png
│   └── error-diagnostics.png
├── app.py                  # Production Hybrid Streamlit Dashboard Architecture
├── Dockerfile              # Multi-Stage Container Layer Blueprint
├── requirements.txt        # Isolated Python Interface Dependencies
└── README.md               # Main Systems Architecture Documentation
🚀 Rapid Deployment SetupStep 1 — Initialize Your Local Engine CoreEnsure Ollama is active on your host computer and download a consumer-optimized edge model:Bashollama run llama3.2:1b
Step 2 — Compile the Isolated Container LayerBuild your optimized application layer image:Bashdocker build -t vllm-nexus .
Step 3 — Spin Up the Hybrid Interface TerminalExecute the runtime sequence to map incoming web traffic seamlessly to Port 80:Bashdocker run --rm --name nexus-app \
  -p 80:80 \
  --entrypoint streamlit \
  vllm-nexus:latest run app.py --server.port 80 --server.address 0.0.0.0 --server.headless true
👨‍💻 Engineering Core InfoDeveloped by Subash Patra Associate Cloud Engineer