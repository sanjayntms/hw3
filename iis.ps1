Add-WindowsFeature Web-Server -IncludeManagementTools
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "NTMS web server --> $($env:computername)"
New-Item -ItemType directory -Path "C:\inetpub\wwwroot\images"
New-Item -ItemType directory -Path "C:\inetpub\wwwroot\videos"
$imagevalue = "Images: " + $($env:computername)
Add-Content -Path "C:\inetpub\wwwroot\images\test.htm" -Value $imagevalue
$videovalue = "Video: " + $($env:computername)
Add-Content -Path "C:\inetpub\wwwroot\video\test.htm" -Value $videovalue