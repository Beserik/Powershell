 $Windowsfeature = Get-WindowsOptionalFeature -FeatureName Internet-Explorer-Optional-amd64 –Online | Where-Object {$_.State –eq 'Disabled','DisablePending'} 
if ($Windowsfeature)
 {
        Write-host "Windows Feature Pending or Disabled"
        Exit 1}
 
else { 
Write-Host "Windows Feature not found" 
Exit 0
}