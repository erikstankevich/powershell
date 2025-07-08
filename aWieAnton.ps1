$Names = @{
    "a" = "anton" 
    "b" = "berta" 
    "c" = "ceasar"
    "d" = "dora"
    "e" = "emil"
    "f" = "friedrich"
    "g" = "gustav"
    "h" = "heinrich"
    "i" = "ida"
    "j" = "julius"
    "k" = "kaufmann"
    "l" = "ludwig"
    "m" = "martha"
    "n" = "nordpol"
    "o" = "otto"
    "p" = "paula"
    "q" = "quelle"
    "r" = "richard"
    "s" = "samuel"
    "t" = "theodor"
    "u" = "ulrich"
    "v" = "viktor"
    "w" = "wilhelm"
    "x" = "wie in nix"
    "y" = "ypsilon"
    "z" = "zacharias"
}

$UserInput = Read-Host "Input letter"
if ($Names.ContainsKey($UserInput)) {
    Write-Host $Names[$UserInput]
}
