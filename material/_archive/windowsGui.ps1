Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$one = 1
$two = 2
$three = 3
$four = 4

$script:p = 0

$form = New-Object System.Windows.Forms.Form

$button1 = New-Object System.Windows.Forms.Button
$button2 = New-object System.Windows.Forms.Button
$button3 = New-Object System.Windows.Forms.Button
$button4 = New-Object System.Windows.Forms.Button

$button1.Size = New-Object System.Drawing.Size(50,50)
$button2.Size = New-Object System.Drawing.Size(50,50)
$button3.Size = New-Object System.Drawing.Size(50,50)
$button4.Size = New-Object System.Drawing.Size(50,50)

$button1.Location = New-Object System.Drawing.Point(0,0)
$button2.Location = New-Object System.Drawing.Point(50,0)
$button3.Location = New-Object System.Drawing.Point(0,50)
$button4.Location = New-Object System.Drawing.Point(50,50)

$button1.Text = $one
$button2.Text = $two
$button3.Text = $three
$button4.Text = $four

$display = New-Object System.Windows.Forms.Button
$display.Text = $script:p
$display.Size = New-Object System.Drawing.Size(100, 25)
$display.Location = New-Object System.Drawing.Point(0,100)

$button1.Add_Click({
    $script:p = $script:p + $one
    $display.text = $script:p
})
$button2.Add_Click({
    $script:p = $script:p + $two
    $display.text = $script:p
})
$button3.Add_Click({
    $script:p = $script:p + $three
    $display.text = $script:p
})
$button4.Add_Click({
    $script:p = $script:p + $four
    $display.text = $script:p
})

$display.Add_Click({
    $script:p = 0
    $display.text = $script:p
})

$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.Controls.Add($button3)
$form.Controls.Add($button4)

$form.Controls.Add($display)

[void]$form.ShowDialog()
