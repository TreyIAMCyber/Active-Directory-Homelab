# 🏢 PixelForge Studios - Active Directory Homelab

Welcome to my **PixelForge Studios AD Homelab**! This project simulates a small business IT environment using **Windows Server** and **Active Directory**. It’s designed to be simple, educational, and practical.

---

## 🎯 Project Goals

This homelab accomplishes three core tasks:

1. **Set up a Domain Controller with Active Directory**
2. **Create user accounts and organize them into groups**
3. **Configure a shared folder with group-based permissions**

---

## 🛠️ Lab Requirements

- **Windows Server 2022 or 2025** (Virtual Machine)
- Optional: **Windows 10/11 Client VM** for testing
- Virtualization software: VirtualBox, VMware, or Hyper-V

---

## 📦 Setup Instructions

### 1. Install and Configure Windows Server

- Install Windows Server on your VM
- Rename the server to `DC01`
- Open **Server Manager** → Add Roles and Features → Install **Active Directory Domain Services (AD DS)**
- Promote the server to a domain controller:
  - Create a new forest: `pixelforge.local`
  - Restart when prompted

---

### 2. Create Users and Groups

- Open **Active Directory Users and Computers**
- Create an Organizational Unit (OU): `Employees`
- Add the following users:
  - `alice`
  - `bob`
  - `carla`
  - `dave`
  - `emma`
- Create two security groups:
  - `DesignTeam` → Add `alice`, `bob`, `carla`
  - `AdminTeam` → Add `dave`, `emma`

---

---

### 3. Configure Shared Folder Access

- On `DC01`, create a folder: `C:\SharedDesigns`
- Right-click → Properties → Sharing → Share the folder
- Set NTFS permissions:
  - `DesignTeam`: Read/Write
  - `AdminTeam`: Full Control

---

## 🧪 Optional Testing

- Join a Windows 10/11 client VM to the domain
- Log in as one of the users
- Access the shared folder via `\\DC01\SharedDesigns`

---

## 📘 Learning Outcomes

- Understand basic Active Directory structure
- Practice user and group management
- Learn how to apply access control using NTFS permissions

---

## 🚀 Future Enhancements (Optional)

- Add Group Policy for password complexity
- Set up roaming profiles
- Deploy a second server for file hosting

---

## 📄 License

This project is for educational purposes only. No license required.
