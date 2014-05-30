# this script will gather the information needed to both download the Duo installer and register the system as a new integration.

# getting the hostname to build our integration
$host=hostname

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


