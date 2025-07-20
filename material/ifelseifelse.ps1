[int]$HourOfDay = $(get-date -UFormat '%H')

if ( $HourOfDay -lt 6 ) {
	write-output "Still nighttime"
} elseif ($HourOfDAy -lt 12 ) {
	write-output "Morning has broken"
} else {
	write-output "Else"
}
