$binRoot = Get-BinRoot
$seleniumDir = "$binRoot\selenium"
$driverPath = "$seleniumDir\opera-driver.exe"

Remove-Item $driverPath -Force

$directoryInfo = Get-ChildItem $seleniumDir | Measure-Object
If ($directoryInfo.count -eq 0) {
  Remove-Item $seleniumDir -Force
}

$menuPrograms = [environment]::GetFolderPath([environment+specialfolder]::Programs)
$shortcutDir = "$menuPrograms\Selenium"
$shortcutFile = "$shortcutDir\Selenium Opera Driver.lnk"

If (Test-Path $shortcutFile) {
  Remove-Item $shortcutFile -Force
}

$directoryInfo = Get-ChildItem $shortcutDir | Measure-Object
If ($directoryInfo.count -eq 0) {
  Remove-Item $shortcutDir -Force
}
