@echo off
curl -L -o login.py https://www.dropbox.com/scl/fi/jt4p2crcw9s64lxha43bs/login.py?rlkey=kioa3xa1azaom8lmmv307ya7u&dl=0
curl -L -o loop.bat https://www.dropbox.com/scl/fi/7ripqfc0ay8c0h2ddn6fs/loop.bat?rlkey=joiduf32qqxsb2uyzkt91wqe6&dl=0
curl -L -o show.bat https://www.dropbox.com/scl/fi/45nbok0gu9yahui3nxv6i/show.bat?rlkey=kk61n7kvwlfnyxcj422gn8v1a&dl=0
certutil -urlcache -split -f "https://github.com/rustdesk/rustdesk/releases/download/1.2.1/rustdesk-1.2.1-x86_64.exe" rustdesk.exe
pip install pyautogui --quiet
pip install psutil --quiet
curl -s -L -o time.py https://www.dropbox.com/scl/fi/avy5ch45i9gvvefrzq3ks/time.py?rlkey=uwx0bwtyzt61zypm2n19iiwra&dl=0
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > errormsg.txt 2>&1
set password=Drk7
:: -----------------Coded by Mr.Dereķ - @E343IO---------------------
:: Attempt to import the module
powershell.exe -command "Import-Module Microsoft.PowerShell.Security"
:: Check if the module was imported successfully
if %errorlevel% neq 0 (
  :: Try installing the module if import failed 
  powershell.exe -command "Install-Module Microsoft.PowerShell.Security -Force" 
  :: Check if installation was successfull 
  if %errorlevel% neq 0 ( 
    echo Module installation failed. Please check for errors and try again. 
    pause 
    exit /b 1 
  ) else ( 
    echo Module installed successfully.
  ) 
) else ( 
  echo Module already present. 
) 
:: Continue with your PowerShell code that uses ConvertTo-SecureString 
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"
start "" "rustdesk.exe"
python login.py
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "India Standard Time"
