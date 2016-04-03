$menuPrograms = [environment]::GetFolderPath([environment+specialfolder]::Programs)
$shortcutFolder = "$menuPrograms\Selenium"
$shortcutFilePath = "$shortcutFolder\Selenium Internet Explorer Driver.lnk"

If (Test-Path $shortcutFilePath) {
  Remove-Item $shortcutFilePath
}

$directoryInfo = Get-ChildItem $shortcutFolder | Measure-Object
if ($directoryInfo.count -eq 0) {
  Remove-Item $shortcutFolder
}