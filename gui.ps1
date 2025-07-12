Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


$weather = Invoke-RestMethod "wttr.in/?format=3"
$form = New-object System.Windows.Forms.Form
$Date = Get-Date
$Time = "$Date `n `n"

$button = New-Object System.Windows.Forms.Button
$button.Text = $Time, $weather
$button.Size = New-Object System.Drawing.Size(222,222)


$form.Controls.add($button)
[void]$form.ShowDialog()
