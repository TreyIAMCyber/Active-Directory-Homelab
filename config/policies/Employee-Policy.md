# Group Policy Template – PixelForge Studios

**GPO Name:** PixelForge - Employee Policy  
**Linked To:** OU=Employees,DC=pixelforge,DC=local  
**Created By:** TreyIAMCyber  
**Date Created:** 09/05/2025

---

## 🎯 Policy Purpose
Enforce security and desktop standards for all employee workstations, including logon behavior and antivirus protection.

---

## 🖥️ Computer Configuration

### Policies > Administrative Templates > System
- **Enable Ctrl+Alt+Del requirement at logon:**  
  - Path: `Windows Settings → Security Settings → Local Policies → Security Options`  
  - Policy: `Interactive logon: Do not require CTRL+ALT+DEL`  
  - Setting: **Disabled**  
  - 📸 *See:* `Screenshots/CtrlAltDel_Policy_Setting.png`

### Policies > Windows Settings > Security Settings
- **Account Policies > Password Policy**
  - Minimum password length: 12 characters
  - Password must meet complexity requirements: Enabled
- **Local Policies > Audit Policy**
  - Audit logon events: Success, Failure

---

## 👤 User Configuration

### Policies > Administrative Templates > Desktop
- Hide and disable all items on the desktop: Disabled

### Policies > Windows Settings > Folder Redirection
- Documents: Redirect to `\\pixelforge.local\users\%USERNAME%\Documents`

---

## 📝 Additional Notes
- This GPO should not be applied to AdminTeam users
- Security filtering applied to `DesignTeam` group only

---

## 📅 Change Log
- 09/05/2025 – Created by TreyIAMCyber
- 09/05/2025 – Added Ctrl+Alt+Del logon requirement
