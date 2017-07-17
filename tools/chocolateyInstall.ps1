$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.94.108_x86_Logitech.exe'
$url64 = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.94.108_x64_Logitech.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logitechgaming*'
  checksum      = '4A745E7D9F625655152450E94D26B3E9F404C7D30BEBA537E86991FDEDCA605E'
  checksumType  = 'sha256'
  checksum64      = 'F9C20FC93FC9B26FCABCCDF7838613A447070345EE7F7E485E9B6EBC2E27046E'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
