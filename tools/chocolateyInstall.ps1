$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'http://www.logitech.com/pub/techsupport/gaming/LGS_8.88.30_x86_Logitech.exe'
$url64 = 'http://www.logitech.com/pub/techsupport/gaming/LGS_8.88.30_x64_Logitech.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logitechgaming*'
  checksum      = 'D9BD217FB774AFF1290B45B97717BBB118665013E0B4D47AA25C334A2A054F97'
  checksumType  = 'sha256'
  checksum64      = '3967645A635F18FBA0FE7A08C5C883613E766D46D5B2F110E6FCC0AAB2D53EE0'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
