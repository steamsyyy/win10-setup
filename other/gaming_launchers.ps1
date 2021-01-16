Set-Location "C:\Windows\System32"
# Install Chocolatey package managewr
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install applications through Chocolatey
choco install uplay playnite steam epicgameslauncher origin