Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$uput = Read-Host "input"

$form = New-Object System.Windows.Forms.Form

$button = New-Object System.Windows.Forms.Button
$button.Size = New-Object System.Drawing.Size(222,222)

$button.Add_Click({
    $button.text = $uput
})

$form.Controls.add($button)
[void]$form.ShowDialog()
