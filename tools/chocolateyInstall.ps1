$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.96.81_x86_Logitech.exe'
$url64 = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_8.96.81_x64_Logitech.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logitechgaming*'
  checksum      = 'C6429C810213B11C2C580B46EA03B6E06CD17039CF4B28E5C1F882532BC2D7FA'
  checksumType  = 'sha256'
  checksum64      = '93B2BC80EFD9A130C73153C675BC62188C6059CC63023BB5D9B06B57B14DA03D'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
