$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.96.88_x86_Logitech.exe'
$url64 = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.96.88_x64_Logitech.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logitechgaming*'
  checksum      = '1BF8544D9563E0B123C779333C568B533074EC097EC1B622A82A21954E54C072'
  checksumType  = 'sha256'
  checksum64      = '4FB50B317EA7E8DECA02C2384EA64E6B85892CA21D4380F48ED8D3EFFE3FCBA1'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
