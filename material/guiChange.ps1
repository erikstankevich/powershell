Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


$Script:var= 0

$form = New-Object System.Windows.Forms.Form

$button = New-Object System.Windows.Forms.Button
$button.Text = $Script:var
$button.Size = New-Object System.Drawing.Size(222,222)

$button.Add_Click({
    $Script:var= $Script:var+ 1
    $button.Text = $Script:var
})

$form.Controls.add($button)
[void]$form.ShowDialog()