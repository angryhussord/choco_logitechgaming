$packageName = 'logitechgaming'
$installerType = 'EXE'
$url = 'https://www.logitech.com/pub/techsupport/gaming/LGS_8.88.30_x86_Logitech.exe'
$url64 = 'https://www.logitech.com/pub/techsupport/gaming/LGS_8.88.30_x64_Logitech.exe'
$silentArgs = '/S'
$checksum = 'd9bd217fb774aff1290b45b97717bbb118665013e0b4d47aa25c334a2a054f97'
$checksum64 = '3967645a635f18fba0fe7a08c5c883613e766d46d5b2f110e6fcc0aab2d53ee0'
$checksumType = 'sha256'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType" -validExitCodes $validExitCodes