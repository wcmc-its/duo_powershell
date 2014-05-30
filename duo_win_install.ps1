# this script will gather the information needed to both download the Duo installer and register the system as a new integration.

# getting the hostname to build our integration
$hostname=hostname

# getting the arcitecture version information
if([IntPtr]::Size -eq 4) {
	$bit="32"
}
Else{
	$bit="64"
}
Write-Host "Detected $bit bit OS"

# getting OS Version
$ver=[System.Environment]::OSVersion.Version

# Chosing the correct download
if(($bit -eq "32") -and ($ver -ge 6)) {$fileurl="https://dl.duosecurity.com/duo-credprov-latest-win32.msi"}
elseif(($bit -eq "64") -and ($ver -ge 6)) {$fileurl="https://dl.duosecurity.com/duo-credprov-latest-x64.msi"}
elseif(($bit -eq "32") -and ($ver -le 5)) {$fileurl="https://dl.duosecurity.com/duo-gina-latest-win32.msi"}
elseif(($bit -eq "64") -and ($ver -le 5)) {$fileurl="https://dl.duosecurity.com/duo-gina-latest-x64.msi"}
else Write-Host "cant determine correct package"

