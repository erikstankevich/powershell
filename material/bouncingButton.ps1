Add-Type -AssemblyName PresentationFramework

$form = New-Object System.Windows.Window

$button = New-Object System.Windows.Controls.Button
$button.Width = 10


$form.Content = $button
$form.ShowDialog()