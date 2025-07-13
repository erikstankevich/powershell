#h1
Write-Host "Odin Recipes" 
Write-Host ""

#let
$recipes = @("Bacon Wrapped Hot Dog", "Chocolate Chip Cookies", "Fluffy Microwave Scrambled Eggs", "baz")
$i = 0
$bar = $recipes.length

function foo {
    while ($i -ne $bar) {
        Write-Host "* " -Nonewline
        Write-Host $recipes[$i] -ForegroundColor blue
        $i = $i+1
    }
}
foo