*Goal:** Understand encryption state, protectors, and recent activity.

### `01_bitlocker_triage.ps1`

```powershell
Write-Host "=== BitLocker Volume Overview ===" -ForegroundColor Cyan
Get-BitLockerVolume | Format-List MountPoint, VolumeStatus, EncryptionPercentage, ProtectionStatus