Set-Location "C:\Windows\System32"
# Install Chocolatey package managewr
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install applications through Chocolatey
# choco install vlc ffmpeg firefox jre8...

# Latest version working with many python libs that don't support 3.9
# choco install python3 --version=3.8.5.20200721