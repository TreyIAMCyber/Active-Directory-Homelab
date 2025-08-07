# PixelForge Studios Homelab Setup Guide

This guide walks you through setting up a Windows Server 2025-based Active Directory domain controller inside VirtualBox for the PixelForge Studios homelab.

---

## 🖥️ Environment Overview

- **Hypervisor**: VirtualBox 7.x
- **Guest OS**: Windows Server 2025 (Standard Edition)
- **Domain Name**: `pixelforge.local`
- **Roles Installed**:
  - Active Directory Domain Services (AD DS)
  - DNS Server
  - Group Policy Management

---

## 🛠️ VirtualBox VM Setup

### 1. Create Virtual Machine
- **Name**: `DC01`
- **Type**: Microsoft Windows
- **Version**: Windows 2022 (use until 2025 is listed)
- **Memory**: 4096 MB (minimum)
- **CPU**: 2 cores
- **Disk**: 60 GB (dynamically allocated)
- **Network Adapter**: Bridged Adapter or Internal Network

### 2. Install Windows Server 2025
- Mount ISO and install OS
- Set static IP (e.g., `192.168.56.10`)
- Rename computer to `DC01`

---

## 🌐 Promote to Domain Controller

### 1. Install AD DS Role
```powershell
Install-WindowsFeature AD-Domain-Services
