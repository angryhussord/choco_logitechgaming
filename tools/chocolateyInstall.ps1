﻿$packageName = 'logitechgaming'
$installerType = 'EXE'
$url = 'http://www.logitech.com/pub/techsupport/gaming/LGS_8.74.80_x86_Logitech.exe'
$url64 = 'http://www.logitech.com/pub/techsupport/gaming/LGS_8.74.80_x64_Logitech.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes