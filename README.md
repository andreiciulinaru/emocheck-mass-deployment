# Emocheck Mass Deployment Powershell Script
Powershell script useful for mass-deploying Emocheck (Emotet Detection Tool). <br/>
Using this Powershell script and the [Emocheck solution](https://github.com/JPCERTCC/EmoCheck) , you can mass deploy the scanner into your network.

## How to use

1. Download [Emocheck](https://github.com/JPCERTCC/EmoCheck/releases) executables.
2. Upload executables to a network share with the right permissions (read and execute only).
3. Copy SHA hashes and replace them into this powershell script.
4. Test and deploy the script to your network using your favorite tool (SCCM, PDQ etc.)

To bypass the execution policy prompt you can run the script with the following arguments :<br/>
`Powershell.exe -noprofile -executionpolicy bypass -file "\\network_path\EmoCheck\EmoChecker.ps1"`
