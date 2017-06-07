--Script to back up any folder to a custom directory with date and time stamp
----1. Cusomize your backup folder in this script
----2. Select a folder in finder and run this script
--https://github.com/LukHad

--CUSTOM backup folder
set p to "/Volumes/WDE2T_MacOS/WorkflowBackUps"

--get current time and date
set {year:y, month:m, day:d, time:t} to (current date)
set myTime to secsToHMS(t as integer)

--CUSTOM date format string
set myDateFormat to (y as string) & "." & ((m as integer) as string) & "." & (d as string) & "." & (myTime as string)


tell application "Finder"
	set sourceFolder to ((target of front window) as text) as alias --source folder
	
	set newFolderName to (myDateFormat & "_" & (name of sourceFolder)) --backup folder name
	make new folder at (p as POSIX file) with properties {name:newFolderName}
	
	set targetFolder to POSIX file (p & "/" & newFolderName) as alias --target folder
	duplicate sourceFolder to targetFolder
end tell

--Function for time
to secsToHMS(secs)
	--<http://macscripter.net/viewtopic.php?id=27203>
	tell (1000000 + secs div hours * 10000 + secs mod hours div minutes * 100 + secs mod minutes) as string Â
		to return text 2 thru 3 & "" & text 4 thru 5 & "" & text 6 thru 7
end secsToHMS