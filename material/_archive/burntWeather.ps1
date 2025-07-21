$weather = Invoke-RestMethod "https://wttr.in/Frankfurt?format=3"
New-BurntToastNotification -Text $weather

