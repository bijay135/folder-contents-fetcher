$path = Read-Host -Prompt "Input your full folder path"
$column =  Read-Host -Prompt "How many columns do you want"
$count = 1

Get-ChildItem -Path $path -Attribute !D | %{ 
    if($count -eq $column){
        write-output "$($_.Name),`n" 
        $count = 1
     }
    else {
         write-output "$($_.Name),"
         $count++;
    }
} |
Out-File folder-contents.txt -NoNewline

write-host "All contents fetched successfully"
write-host "Check folder-contents.txt for the output"

Start-Sleep -s 3