$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.98.218_x86_Logitech.exe'
$url64 = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.98.218_x64_Logitech.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logitechgaming*'
  checksum      = '4D199E9588BAF7A291F2DA4A5C5B2A3C570264923BE526C65F495DA8F5D4634B'
  checksumType  = 'sha256'
  checksum64      = '177A4B9D6F46F4B2F4C4837E0D0984A12386633E15C2B78639B31C69D97B1CF5'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
