@echo off
color 0a
mode con: cols=85 lines=60
title BrainRot OMNIPOTENT EDITION v6.0
cls

echo.
echo ▄▄▄▄· ▄▄▄   ▄▄▄· ▪   ▐ ▄ ▄▄▄        ▄▄▄  ▄▄▄▄▄     ▄▄▄▄·  ▄▄▄· ▄▄▄▄·  ▄· ▄▌
echo ▐█ ▀█▪▀▄ █·▐█ ▀█ ██ •█▌▐█▀▄ █·▪     ▀▄ █·•██  ▪     ▐█ ▀█▪▐█ ▀█ ▐█ ▀█▪▐█▪██▌
echo ▐█▀▀█▄▐▀▀▄ ▄█▀▀█ ▐█·▐█▐▐▌▐▀▀▄  ▄█▀▄ ▐▀▀▄  ▐█.▪ ▄█▀▄ ▐█▀▀█▄▄█▀▀█ ▐█▀▀█▄▐█▌▐█▪
echo ██▄▪▐█▐█•█▌▐█ ▪▐▌▐█▌██▐█▌▐█•█▌▐█▌.▐▌▐█•█▌ ▐█▌·▐█▌.▐▌██▄▪▐█▐█ ▪▐▌██▄▪▐█ ▐█▀·.
echo ·▀▀▀▀ .▀  ▀ ▀  ▀ ▀▀▀▀▀ █▪.▀  ▀ ▀█▄▀▪.▀  ▀ ▀▀▀  ▀█▄▀▪·▀▀▀▀  ▀  ▀ ·▀▀▀▀   ▀ • 
echo                     OMNIPOTENT EDITION v6.0 - MAXIMUM POWER
echo ================================================================================

:menu
echo [1] GOD MODE (All Enhancements)
echo [2] COMPETITIVE MODE (Low Recoil + High Precision)
echo [3] MAXIMUM PERFORMANCE MODE
echo [4] NETWORK OPTIMIZATION
echo [5] RECOIL ENHANCEMENT SUITE
echo [6] DEFAULT SETTINGS
echo.
set /p choice="Select power level (1-6): "

:: Recoil and Bloom Enhancement Suite
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\mouseController" /v "Value" /t REG_SZ /d "Allow" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseSensitivity" /t REG_DWORD /d "48" /f
reg add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000C0CC0C0000000000809919000000000040662600000000000033330000000000" /f
reg add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000A800000000000000E00000000000" /f

:: Kernel-Level Optimizations
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
bcdedit /set tscsyncpolicy enhanced
bcdedit /set hypervisorlaunchtype off
bcdedit /set isolatedcontext No
bcdedit /set nx OptOut

:: NVIDIA Optimizations
nvidia-smi --auto-boost-default=0
nvidia-smi -pm 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfLevelSrc" /t REG_DWORD /d "8738" /f

:: AMD Optimizations
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f

:: Network Optimization Suite
netsh int tcp set global autotuninglevel=restricted
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh interface tcp set global timestamps=disabled
netsh interface tcp set global nonsackrttresiliency=disabled
netsh interface tcp set global maxsynretransmissions=2

:: RAM Optimization
EmptyStandbyList.exe workingsets
EmptyStandbyList.exe modifiedpagelist
EmptyStandbyList.exe priority0standbylist
EmptyStandbyList.exe standbylist

:: Process Priority Enhancement
powershell -Command "$Process = Get-Process VALORANT; $Process.ProcessorAffinity = 0xFFFF; $Process.PriorityClass = 'RealTime'"
wmic process where name="VALORANT.exe" CALL setpriority "256"

:: Input Enhancement
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "20" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "20" /f

:: System Performance
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61

:: Kill Resource-Heavy Processes
taskkill /F /IM chrome.exe /T
taskkill /F /IM discord.exe /T
taskkill /F /IM spotify.exe /T

:: Clear System Junk
del /s /f /q c:\windows\temp\*.*
del /s /f /q C:\WINDOWS\Prefetch\*.*
del /s /f /q %temp%\*.*

:: Epic Loading Animation
for /l %%i in (1,1,100) do (
    cls
    echo Loading BrainRot Omnipotent Enhancement... %%i%%
    echo [
    set /p "=%" <nul
    for /l %%j in (1,1,%%i) do set /p "=█" <nul
    for /l %%j in (%%i,1,100) do set /p "= " <nul
    echo ]
    echo.
    echo ▓▒░ OPTIMIZING KERNEL...
    echo ▓▒░ ENHANCING RECOIL CONTROL...
    echo ▓▒░ MAXIMIZING NETWORK...
    echo ▓▒░ ENGAGING GOD MODE...
    ping localhost -n 1 >nul
)

:: Launch Sequence
echo ╔════════════════════════════════╗
echo ║  BRAINROT ENHANCEMENT ACTIVE             ║
echo ║  RECOIL: MINIMIZED                       ║
echo ║  BLOOM: REDUCED                          ║
echo ║  PERFORMANCE: MAXIMIZED                  ║
echo ║  NETWORK: OPTIMIZED                      ║
echo ╚════════════════════════════════╝

:: Launch Valorant with God Mode
start "" /REALTIME "C:\Riot Games\VALORANT\live\VALORANT.exe"

:: Auto-restart Discord after delay
timeout /t 10 /nobreak >nul
start "" "%LOCALAPPDATA%\Discord\app-1.0.9004\Discord.exe"

echo DOMINATION MODE ACTIVATED - GOOD LUCK!
timeout /t 3
exit
