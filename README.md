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

![Nexus Terminal Success Preview](dashboard-success.png)

### 2. Defensive Error Architecture (Robust Interception)
Custom-built middleware pipeline that intercepts raw API failure streams (such as decommissioned model endpoints) and renders exact upstream diagnostics back to the user instead of failing silently:

![Nexus Terminal Error Interception](error-diagnostics.png)

---

## 🏗️ Comprehensive Core Architecture

The infrastructure isolates the frontend environment entirely within a secure Docker container virtualization boundary. To run local compute without draining container resources, the cluster leverages an internal network bridge back to the host operating system.

```mermaid
graph TD
    User([🌐 Client Web Browser]) -->|Port 80| UI[⚡ Streamlit UI Core - Inside Container]
    UI -->|State Management| Router{Runtime Route Selector}
    
    %% Local Path
    Router -->|Local Edge Route| Bridge[🐳 host.docker.internal:11434]
    Bridge -->|Host Loopback Networking| Ollama[🦙 Native Ollama Daemon]
    Ollama -->|On-Device Weight Inference| M1[llama3.2:1b / qwen2:0.5b]
    
    %% Cloud Path
    Router -->|Cloud Accelerator Route| TLS[🔐 Secure HTTPS Endpoints]
    TLS -->|High-Speed Token Streaming| Groq[🚀 Groq API LPU Infrastructure]
    Groq -->|Data-Center Cluster Compute| M2[llama-3.1-8b-instant]

    style UI fill:#0c2137,stroke:#00f5ff,stroke-width:2px,color:#d0eeff
    style Router fill:#1e0f3c,stroke:#b400ff,stroke-width:2px,color:#d0eeff
    style Ollama fill:#051e14,stroke:#00ff88,stroke-width:1px,color:#d0eeff
    style Groq fill:#1f1f1f,stroke:#00f5ff,stroke-width:1px,color:#d0eeff
⚙️ Feature Matrix ComparisonOperational MetricLocal Edge RuntimeEnterprise Cloud RuntimePrimary EngineOllama Engine (Native Host Daemon)Groq LPU Compute HardwareToken Cost100% Free / Absolute Zero BillingScaled Developer Tier FrameworkPrivacy ProfileSandbox Isolation (Data never leaves machine)Processed via TLS Encrypted Cloud EndpointsHardware SourceLocal Host CPU / Integrated VRAMMassively Parallel Data-Center GPUsPrimary Use CaseOffline Code Generation & Secure DiagnosticsHigh-Speed Context Processing & Complex Logic📂 Production Repository Layoutnexus-hybrid-terminal/
├── app.py                  # Production Hybrid Streamlit Dashboard Architecture
├── Dockerfile              # Multi-Stage Container Layer Blueprint
├── requirements.txt        # Isolated Python Interface Dependencies
├── dashboard-success.png   # Operational streaming success layout asset
├── error-diagnostics.png   # Defensive error intercept visual asset
└── README.md               # Main Systems Architecture Documentation
🚀 Rapid Deployment SetupStep 1 — Initialize Your Local Engine CoreEnsure Ollama is active on your host computer and download a consumer-optimized edge model:Bashollama run llama3.2:1b
Step 2 — Compile the Isolated Container LayerBuild your optimized application layer image:Bashdocker build -t vllm-nexus .
Step 3 — Spin Up the Hybrid Interface TerminalExecute the runtime sequence to map incoming web traffic seamlessly to Port 80:Bashdocker run --rm --name nexus-app \
  -p 80:80 \
  --entrypoint streamlit \
  vllm-nexus:latest run app.py --server.port 80 --server.address 0.0.0.0 --server.headless true

Developed by Subash Patra - Associate Cloud Engineer.