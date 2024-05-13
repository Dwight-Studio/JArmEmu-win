$ErrorActionPreference = 'Stop'
$url        = 'https://github.com/Dwight-Studio/JArmEmu/releases/download/v0.2.1/JArmEmu-0.2.1-1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'JArmEmu*'

  checksum      = '8B89C9FAC5A4C71CEE63D78A1E33A5A43A0E208B961E34F8D94D793D7359A678'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs