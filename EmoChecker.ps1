
$emocheckPath = "\\network_path\EmoCheck" #Path to Emocheck executables
$emo86 = "emocheck_v1.0_x86.exe"
$emo64 = "emocheck_v1.0_x64.exe"
$emo86SHA256 = "544B6EB3BC04E9015AE7B4078E20A33A28C35370FB9E2C498D65E072C4C81BF3"  #Hashes taken from Emocheck repo
$emo64SHA256 = "CB80892758754D12AF2148BCFFC32EAE0DAA02C4815415B394AFF2D79E0B761B"  #Hashes taken from Emocheck repo
$emoDefaultVersion = "x64" #No need to change this.
$env:SEE_MASK_NOZONECHECKS = 1

if (![Environment]::Is64BitOperatingSystem) { $emoDefaultVersion = "x86" }

Set-Location $emocheckPath

if ($emoDefaultVersion -eq "x64") {
	$genHash = get-filehash -Algorithm SHA256 $emo64 
	
	if ( $genHash.Hash -eq $emo64SHA256) { 
		  Start-Process -FilePath $emo64 -ArgumentList '/quiet'               
		  }
	else { write-output "WRONG HASH!"
		  Break 
         }
}

else {
	$genHash = get-filehash -Algorithm SHA256 $emo86 
	if ( $genHash.Hash -eq $emo86SHA256) { 
         Start-Process -FilePath $emo86 -ArgumentList '/quiet'   
        }
	else  { write-output "WRONG HASH!"
            Break 
          }
}

