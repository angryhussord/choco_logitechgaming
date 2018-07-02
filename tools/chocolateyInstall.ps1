$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_9.00.42_x86_Logitech.exe'
$url64 = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_9.00.42_x64_Logitech.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logitechgaming*'
  checksum      = 'F189BDF5ED4647996E796FDB3212E368317039A3BE94773023AA10098DCFFEEB'
  checksumType  = 'sha256'
  checksum64      = '1368CCEF7D5E936CA52FF90482C4F24DBA3C46988F3A165006A99B2A302B4693'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
