$nimi = "Kadri Laumets"
$email = "kadrilaumets@hkhk.edu.ee"
$kp = Get-Date
echo $nimi, $email, $kp
$skriptiAsukoht = $MyInvocation.MyCommand.Path
$dir = Split-Path $skriptiAsukoht
$emailid = Get-Content -path $dir\emailid.txt
$emailid = $emailid.split(",")
$emailid2 = $emailid,$email
$emailid2 | Out-File C:\Github-ITS24/Powershell/emailid2.txt
Write-Host "Massiivis on kokku" $emailid.Count "emaili."

#Get-Content C:\Github-ITS24/Powershell/emailid2.txt | Measure-Object -Line)
 
Get-Content C:\Github-ITS24/Powershell/emailid2.txt |Select-Object -first 1 -last 1