New-Item -Path "C:\repos" -ItemType Directory

winget install git.git
winget install vscode
winget install Mozilla.Firefox.eu
winget install steam
winget install Discord.Discord
winget install qBittorrent.qBittorrent
winget install Telegram.TelegramDesktop
winget install neovim


Start-Process -FilePath "cmd.exe" -ArgumentList '/k ssh-keygen -t ed25519 -C "21estankevich@gmail.com"' -WindowStyle Normal
Start-Sleep -Seconds 2
$wshell = New-Object("cmd.exe")
EStart-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")
EStart-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")
EStart-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name HideIcons -Value 1

Stop-Process -Name explorer -Force
Start-Process explorer

New-item -Path "C:\Color" -ItemType Directory
$Path = "C:\Color\red_wallpaper.bmp"
$bitmap = New-Object System.Drawing.Bitmap 1, 1
$color = [System.Drawing.Color]::FromArgb(99, 99, 99)
$bitmap.SetPixel(0, 0, $color)
$bitmap.Save($Path, [System.Drawing.Imaging.ImageFormat]::Bmp)
$bitmap.Dispose()

Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@
[Wallpaper]::SystemParametersInfo(20, 0, $Path, 3)
