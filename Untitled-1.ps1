if (!([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal
.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

function spinner([string]$input_text = 'Press any key to continue... ') 
{
    $spin="/-\|"
    Write-Host "$input_text" -nonewline
    $i=0
    while($true)
    {
        Write-Host "`b$($spin.Substring($i++%$spin.Length)[0])" -nonewline
        bash -c "read -n 1 -t 0.25 $noop"

        if($LastExitCode -eq 0){
            break
        }
    }
}

echo " .--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--. ";
echo "/ .. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \";
echo "\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .' /";
echo " \/ /`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'\/ / ";
echo " / /\  ____________________/\                                    / /\ ";
echo "/ /\ \ \______   \__    ___)/_____                              / /\ \";
echo "\ \/ /  |    |  _/ |    |  /  ___/                              \ \/ /";
echo " \/ /   |    |   \ |    |  \___ \                                \/ / ";
echo " / /\   |______  / |____| /____  >                               / /\ ";
echo "/ /\ \         \/              \/                               / /\ \";
echo "\ \/ /                      __                                  \ \/ /";
echo " \/ /  ___________    ____ |  | _______     ____   ____          \/ / ";
echo " / /\  \____ \__  \ _/ ___\|  |/ /\__  \   / ___\_/ __ \         / /\ ";
echo "/ /\ \ |  |_> > __ \\  \___|    <  / __ \_/ /_/  >  ___/        / /\ \";
echo "\ \/ / |   __(____  /\___  >__|_ \(____  /\___  / \___  >       \ \/ /";
echo " \/ /  |__|       \/     \/     \/     \//_____/      \/         \/ / ";
echo " / /\  .__                 __         .__  .__                   / /\ ";
echo "/ /\ \ |__| ____   _______/  |______  |  | |  |   ___________   / /\ \";
echo "\ \/ / |  |/    \ /  ___/\   __\__  \ |  | |  | _/ __ \_  __ \  \ \/ /";
echo " \/ /  |  |   |  \\___ \  |  |  / __ \|  |_|  |_\  ___/|  | \/   \/ / ";
echo " / /\  |__|___|  /____  > |__| (____  /____/____/\___  >__|      / /\ ";
echo "/ /\ \         \/     \/            \/               \/         / /\ \";
echo "\ \/ / ____   ________                                          \ \/ /";
echo " \/ /  \   \ /   /_   |                                          \/ / ";
echo " / /\   \   Y   / |   |                                          / /\ ";
echo "/ /\ \   \     /  |   |                                         / /\ \";
echo "\ \/ /    \___/   |___|                                         \ \/ /";
echo " \/ /                                                            \/ / ";
echo " / /\.--..--..--..--..--..--..--..--..--..--..--..--..--..--..--./ /\ ";
echo "/ /\ \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \/\ \";
echo "\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .'\ .' /";
echo " `--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--' ";

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
if( )
Set-ExecutionPolicy Bypass -Scope Process -Force; iex (choco install python3)

