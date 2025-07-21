Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


$rRay = @("1","a","3","b","5")
$Script:i = 0

$form = New-Object System.Windows.Forms.Form

$button = New-Object System.Windows.Forms.Button
$button.text = $rRay[$Script:i]
$button.Size = New-Object System.Drawing.Size(222,222)

$button.Add_Click({
    $Script:i = $Script:i + 1
    $button.text = $rRay[$Script:i]
})

$form.Controls.add($button)
[void]$form.ShowDialog()
