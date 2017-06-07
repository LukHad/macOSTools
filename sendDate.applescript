--Script that sends the today date to any application as text
----1. Customize your date format if you want
----2. Run this script to receive the date as if you would be typing it
--https://github.com/LukHad

set myText to do shell script "date \"+%d.%m.%Y\""

tell application "System Events"
	set currentApp to name of every application process whose frontmost is true
end tell
set currentApp to currentApp as text

tell application currentApp
	activate
	tell application "System Events"
		keystroke myText
	end tell
end tell