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
