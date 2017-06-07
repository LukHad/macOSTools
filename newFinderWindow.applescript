--Script to open new finder window from any application (like windows+e on windows)
----1. Customize your default folder in this script
----2. Run this script to activate finder and open new window (from shortcut)
--https://github.com/LukHad

tell application "Finder"
	activate
	make new Finder window to ("/Users/Lukas/MyFiles" as POSIX file) --customize your default folder
end tell