Add-Type -AssemblyName PresentationFramework

$form = New-Object System.Windows.Window
$canvas = New-Object System.Windows.Controls.Canvas
    $button = New-Object System.Windows.Controls.Button
    $button.Width = 100
    $button.Height = 50 
    
    $script:x = 0
    [System.Windows.Controls.Canvas]::SetLeft($button, $x)
    [System.Windows.Controls.Canvas]::SetTop($button, 0)


    $canvas.Children.Add($button)


    $timer = New-Object System.Windows.Threading.DispatcherTimer
    $timer.Interval = [TimeSpan]::FromSeconds(1)
    $timer.Add_Tick({
        $script:x = $script:x + 10
        [System.Windows.Controls.Canvas]::SetLeft($button, $script:x)
    })

    $timer.Start()

    $form.Content = $canvas
$form.ShowDialog()


    