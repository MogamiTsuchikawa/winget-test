# フォルダの子要素を表示
Get-ItemProperty -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
# レジストリの値の読み込み
Get-ItemPropertyValue -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name Desktop
# レジストリの値の更新
Set-ItemProperty -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name Desktop -Value "E:\Desktop\Develop"