$path = Read-Host -Prompt "Input your full folder path"

Get-ChildItem -Path $path -Attribute !D | 
%{ write-output "$($_.Name)," } |
Out-File folder-contents.txt -NoNewline

write-host "All contents fetched successfully"
write-host "Check folder-contents.txt for the output"

Start-Sleep -s 3