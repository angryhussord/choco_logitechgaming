$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.91.48_x86_Logitech.exe'
$url64 = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.91.48_x64_Logitech.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logitechgaming*'
  checksum      = 'CC23A3CC5EF0CF69A6B14C21BD9006A12E17CEECE66A1C919434AF7C4F26CE60'
  checksumType  = 'sha256'
  checksum64      = 'B9F7B2F20D48E0E75AF1AD11AC80EDF124156569EED0B9A564D5B9B844272BD7'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
