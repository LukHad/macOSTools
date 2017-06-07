--Script to copy path of folder as text
----1. Select a folder in finder
----2. Run this script
----3. Path is in your clipboard as plain text
--https://github.com/LukHad

tell application "Finder"
	set sourceFolder to ((target of front window) as text) --source folder
	set the clipboard to POSIX path of sourceFolder
end tell

