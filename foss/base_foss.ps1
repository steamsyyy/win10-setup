Set-Location "C:\Windows\System32"
# Install Chocolatey package managewr
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install applications through Chocolatey
# All programs from https://www.fosshub.com/ or https://sourceforge.net/
choco install audacity gimp windirstat openjdk vlc sumatrapdf `
notepadplusplus.install firefox libreoffice-still 7zip.install `

# Latest version working with many python libs that don't support 3.9
choco install python3 --version=3.8.5.20200721