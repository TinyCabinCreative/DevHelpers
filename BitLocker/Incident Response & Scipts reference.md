# 🔐 BitLocker Incident Response (IR) Script Pack & Reference

**Audience:** Developers, SysAdmins, Security Engineers, DFIR practitioners
**Use case:** High‑importance data protection, incident response, internal security tooling, portfolio / helper repo

---

## ⚠️ Legal & Ethical Notice

This repository is intended for **defensive security, system administration, and incident response** only.

* Do **not** use these scripts to bypass security controls you do not own or manage.
* During a suspected incident, **preserve evidence first**.
* Only perform cleanup or log removal **after** IR, legal, and compliance approval.

---

## 📁 Repository Structure

```
bitlocker-ir-helper/
├─ README.md
├─ docs/
│  └─ bitlocker-ir-reference.md
├─ scripts/
│  ├─ 01_bitlocker_triage.ps1
│  ├─ 02_keyprotector_audit.ps1
│  ├─ 03_recovery_key_rotation.ps1
│  ├─ 04_eventlog_collection.ps1
│  ├─ 05_containment_checks.ps1
│  ├─ 06_authorized_cleanup.ps1
│  └─ 07_status_report.ps1
└─ examples/
   └─ sample_output.txt
```

---

# 🧠 BitLocker IR Reference (Quick Theory)

## What BitLocker Protects

* Uses **AES (XTS-AES)** full-disk encryption
* Protectors can include:

  * Password
  * Recovery Password (48‑digit)
  * TPM / TPM+PIN / Startup Key

## What Attackers Actually Target

* Key material (memory, recovery files, AD/Azure escrow)
* Boot chain / WinRE / firmware weaknesses
* Admin access to **add/remove protectors**

> Breaking BitLocker crypto directly is impractical; attackers abuse **surrounding systems**.

---

# 🧩 INCIDENT RESPONSE PHASES + SCRIPTS

---

## 1️⃣ Identification & Triage

**Goal:** Understand encryption state, protectors, and recent activity.

### `01_bitlocker_triage.ps1`

```powershell
Write-Host "=== BitLocker Volume Overview ===" -ForegroundColor Cyan
Get-BitLockerVolume | Format-List MountPoint, VolumeStatus, EncryptionPercentage, ProtectionStatus
```

---

## 2️⃣ Key Protector Audit

**Goal:** Identify all protectors and spot suspicious additions.

### `02_keyprotector_audit.ps1`

```powershell
Get-BitLockerVolume | ForEach-Object {
    Write-Host "Drive: $($_.MountPoint)" -ForegroundColor Yellow
    $_.KeyProtector | Select KeyProtectorId, KeyProtectorType
}
```

Red flags:

* Multiple unexpected recovery passwords
* Recently added protectors without change records

---

## 3️⃣ Recovery Key Rotation (Post‑Incident)

**Goal:** Invalidate potentially exposed recovery keys.

### `03_recovery_key_rotation.ps1`

```powershell
$MountPoint = "D:"

Write-Host "Adding new recovery password protector..." -ForegroundColor Cyan
Add-BitLockerKeyProtector -MountPoint $MountPoint -RecoveryPasswordProtector | Out-Null

$NewKey = (Get-BitLockerVolume -MountPoint $MountPoint).KeyProtector |
    Where-Object {$_.KeyProtectorType -eq 'RecoveryPassword'} |
    Select-Object -ExpandProperty RecoveryPassword

Write-Host "NEW RECOVERY KEY:" -ForegroundColor Green
$NewKey
```

> Back this key up to AD / Azure / secure vault **immediately**.

---

## 4️⃣ Event Log Collection (Evidence Preservation)

**Goal:** Preserve BitLocker‑related activity for DFIR.

### `04_eventlog_collection.ps1`

```powershell
$OutDir = "C:\IR_Collection"
New-Item -ItemType Directory -Path $OutDir -Force | Out-Null

Get-WinEvent -ProviderName "Microsoft-Windows-BitLocker-Driver","Microsoft-Windows-BitLocker-API" -MaxEvents 500 |
    Export-Clixml "$OutDir\bitlocker_events.xml"

Write-Host "Event logs exported to $OutDir" -ForegroundColor Green
```

---

## 5️⃣ Containment & Hardening Checks

**Goal:** Ensure encryption is active and not suspended.

### `05_containment_checks.ps1`

```powershell
Get-BitLockerVolume | ForEach-Object {
    if ($_.ProtectionStatus -ne 'On') {
        Write-Warning "BitLocker protection OFF on $($_.MountPoint)!"
    }
}
```

Optional hardening:

```powershell
Resume-BitLocker -MountPoint "D:"
```

---

## 6️⃣ Authorized Cleanup (Decommission Only)

**⚠️ DO NOT RUN DURING ACTIVE INCIDENTS**

### `06_authorized_cleanup.ps1`

```powershell
# Clear PowerShell history (user scope)
Remove-Item (Get-PSReadlineOption).HistorySavePath -ErrorAction SilentlyContinue

# Remove locally stored recovery files if policy allows
Remove-Item "C:\RecoveryKeys\*" -Force -ErrorAction SilentlyContinue

Write-Host "Authorized cleanup complete." -ForegroundColor Yellow
```

> For secure deletion, use **Sysinternals SDelete** (recommended in README).

---

## 7️⃣ Status & Audit Report

**Goal:** Generate a quick audit snapshot.

### `07_status_report.ps1`

```powershell
Get-BitLockerVolume | Select MountPoint, VolumeStatus, EncryptionPercentage, ProtectionStatus |
    Format-Table -AutoSize
```

---

# 🧪 Example Output (for README)

```
MountPoint VolumeStatus       EncryptionPercentage ProtectionStatus
---------- ------------       -------------------- ----------------
C:         FullyEncrypted     100                  On
D:         EncryptionInProgress 42                  On
```

---

# 🔒 Best Practices (TL;DR)

* Always deploy **Recovery Password + TPM/PIN**
* Enforce **central escrow** (AD / Entra ID)
* Rotate recovery keys after incidents
* Monitor BitLocker events in SIEM
* Never store recovery keys in plaintext repos

---

## 📌 Why This Repo Looks Good to Recruiters

* Shows **real‑world security thinking**
* Demonstrates PowerShell + Windows internals
* Covers IR lifecycle (identify → contain → recover)
* Clearly ethical, defensive, and documented

---

If you want, this can be extended with:

* AD/Azure recovery‑key audit scripts
* SIEM‑ready JSON output
* Intune / GPO compliance checks
* A ransomware simulation lab
