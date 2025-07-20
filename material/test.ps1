$FileName = "C:\powershell\.foo.ps1x"
if (test-path $FileName) {
	Write-Host "foo"
} else {
	"$FileName not found"
}
