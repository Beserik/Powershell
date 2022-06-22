$path = "HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration"
$value = "UpdateChannel"
$data = "http://officecdn.microsoft.com/pr/55336b82-a18d-4dd6-b5f6-9e5095c314a6"

if (Test-Path -Path $path) {
    (New-ItemProperty -Path $path -Name $value -Value $data -PropertyType STRING -Force)
}

$path = "HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration"
$value = "CDNBaseUrl"
$data = "http://officecdn.microsoft.com/pr/55336b82-a18d-4dd6-b5f6-9e5095c314a6"

if (Test-Path -Path $path) {
    (New-ItemProperty -Path $path -Name $value -Value $data -PropertyType STRING -Force)
}

& “C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe” /update user displaylevel=false forceappshutdown=false /q