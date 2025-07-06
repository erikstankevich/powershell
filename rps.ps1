$choice = @("rock", "paper", "scissors")

function getPlayerChoice {
    $global:playerinput = Read-Host "Choose: $choice"
}
getPlayerChoice


function getComputerChoice {
    $global:i = Get-Random -Minimum 0 -Maximum 3
    Write-Host "Computer chose" $choice[$i]
}
getComputerChoice

function getResult{
    if ($playerinput -eq "rock" -and $choice[$i] -eq "scissors"){
        Write-Host "You win"
    } elseif ($playerinput -eq "paper" -and $choice[$i] -eq "rock") {
        Write-Host "You win"
    } elseif ($playerinput -eq "scissors" -and $choice[$i] -eq "paper"){
        Write-Host "You win"
    } elseif ($playerinput -eq $choice[$i]) {
        Write-Host "It's a tie"
    } else {
        Write-Host "You loose"
    }
}
getResult
