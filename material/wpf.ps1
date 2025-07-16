Add-Type -AssemblyName PresentationFramework

$window = New-Object System.Windows.Window

$stack = New-Object System.Windows.Controls.StackPanel
$stack.Orientation = "Horizontal"

$button = New-Object System.Windows.Controls.Button
$button.Content = "foo"
$button.Width = 50
$button.Height = 30
$button.add_Click({
    $button.Content = "lorem"
})

$btn2 = New-Object System.Windows.Controls.Button
$btn2.Content = "bar"
$btn2.Width = 50
$btn2.Height = 30
$btn2.add_Click({
    $btn2.Content = "ipsum"
})

$stack.Children.Add($button)
$stack.Children.Add($btn2)

$window.Content = $stack
$window.ShowDialog()