Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form

$firstButton = New-Object System.Windows.Forms.Button
$firstButton.Size = New-Object System.Drawing.Size(111,111)

$secondButton = New-Object System.Windows.Forms.Button
$secondButton.Size = New-Object System.Drawing.Size(111,111)
$secondButton.Location = New-Object System.Drawing.Point(111,111)

$handleToggle = {
    if ($firstButton.text -eq "foo") {
        $firstButton.text = "bar"
        $secondButton.text = "foo"
    } else {
        $firstButton.text = "foo"
        $secondButton.text = "bar"
    }
}

$firstButton.add_Click($handleToggle)
$secondButton.add_Click($handleToggle)

$form.Controls.Add($firstButton)
$form.Controls.Add($secondButton)
[void]$form.ShowDialog()