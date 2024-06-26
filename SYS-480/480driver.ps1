Import-Module '/home/nicolas/Documents/Tech-Journal/SYS-480/modules/480-utils' -Force
#Call the Banner Function
480Banner
$conf = Get-480Config -config_path "/home/nicolas/Documents/Tech-Journal/SYS-480/480.json"
480Connect -server $conf.vcenter_server

$option = Read-Host -Prompt "`nChoose a function:
[1] Linked Clone
[2] New Network
[3] Get IP
[4] Set Power
[5] Set Network
[6] Set Windows IP`n"

switch ($option) {
    '1' {
        Clear-Host
        LinkedClone -conf $conf 
    }
    '2' {
        Clear-Host
        New-Network -conf $conf
    }
    '3' {
        Clear-Host
        Get-IP -conf $conf
    }
    '4' {
        Clear-Host
        Set-Power -conf $conf
    }
    '5' {
        Clear-Host
        Set-Network -conf $conf
    }
    '6' {
        Clear-Host
        Set-Win-IP
    }
    default { Write-Output "Invalid option." }
}