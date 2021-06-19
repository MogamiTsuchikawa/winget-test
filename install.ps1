# フォルダの子要素を表示
#Get-ItemProperty -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
# レジストリの値の読み込み
#Get-ItemPropertyValue -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name Desktop
# レジストリの値の更新
#Set-ItemProperty -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name Desktop -Value "E:\Desktop\Develop"

$i=1
$txt = "C:\Users\mogami\Downloads\winget-test-master\winget-test-master\install-app-list.txt"
$enc = [Text.Encoding]::GetEncoding("Shift_JIS")
$fh = New-Object System.IO.StreamReader($txt, $enc)
while (($l = $fh.ReadLine()) -ne $null) {
    winget install $l
    $i++
}