Add-Type -AssemblyName PresentationFramework

$form = New-Object System.Windows.Window
$canvas = New-Object System.Windows.Controls.Canvas
    $button = New-Object System.Windows.Controls.Button
    $button.Width = 100
    $button.Height = 50 
    
    $x = 0
    [System.Windows.Controls.Canvas]::SetLeft($button, $x)
    [System.Windows.Controls.Canvas]::SetTop($button, 0)


    $canvas.Children.Add($button)

    $form.Content = $canvas
$form.ShowDialog()

    while ($true) {
        $x = $x + 10
        [System.Windows.Controls.Canvas]::SetLeft($button, $x)
        Start-Wait -Seconds 1
    }

    