Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form

$button = New-Object System.Windows.Forms.Button
$button.Size = New-Object System.Drawing.Size(222,222)

$button.Add_click({
    $button.text = Read-Host "Please talk to me"
})

$form.Controls.Add($button)
[void]$form.ShowDialog()

