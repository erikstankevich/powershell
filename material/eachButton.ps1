Add-Type -AssemblyName System.Windows.Forms
Add-Type -Assemblyname System.Drawing


$rRay = @(1,2,3,4,5,6,7,8,9)
$gridx = @(0, 50, 100, 0, 50, 100, 0, 50, 100)
$gridy = @(0, 0, 0, 50, 50, 50, 100, 100, 100)

$form = New-Object System.Windows.Forms.Form

foreach ($item in $rRay) {
    $button = New-Object System.Windows.Forms.Button
    $button.Size = New-Object System.Drawing.Size(50,50)
    $button.Text = $item
    $button.Location = New-Object System.Drawing.Point($gridx[$i], $gridy[$i])

$form.Controls.Add($button)

$i = $i + 1

#foreach = $form.Controls.add(#)
}

[void]$form.ShowDialog()



