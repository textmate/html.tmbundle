-- This is a copy of the Applescript in text form in case Script Editor refuses to open
-- the saved script again.

if application "Safari" is running then
	tell application "Safari"
		set sameURL to URL of current tab of front window
		set URL of current tab of front window to sameURL
	end tell
end if

try
	tell application "Finder"
		name of application file id "com.google.Chrome"
	end tell
	if application "Google Chrome" is running then
		tell application "Google Chrome"
			reload active tab of window 1
		end tell
	end if
on error
	-- do nothing
end try

try
	tell application "Finder"
		name of application file id "org.mozilla.firefox"
	end tell
	if application "Firefox" is running then
		tell application "Firefox" to activate
		tell application "System Events"
			if UI elements enabled then
				keystroke "r" using command down
				-- Fails if System Preferences > Security & Privacy > Privacy > Accessibility > TextMate is not checked 
			else
				-- Comment out until Firefox regains Applescript support
				-- tell app "Firefox" to Get URL "JavaScript:window.location.reload();" inside window 1
				-- Fails if Firefox is set to open URLs from external apps in new tabs.
			end if
		end tell
	end if
on error
	-- do nothing
end try

try
	tell application "Finder"
		name of application file id "org.mozilla.firefoxdeveloperedition"
	end tell
	if application "FirefoxDeveloperEdition" is running then
		tell application "FirefoxDeveloperEdition" to activate
		tell application "System Events"
			if UI elements enabled then
				keystroke "r" using command down
				-- Fails if System Preferences > Security & Privacy > Privacy > Accessibility > TextMate is not checked 
			else
				-- Comment out until Firefox regains Applescript support
				-- tell app "Firefox" to Get URL "JavaScript:window.location.reload();" inside window 1
				-- Fails if Firefox is set to open URLs from external apps in new tabs.
			end if
		end tell
	end if
on error
	-- do nothing
end try

try
	tell application "Finder"
		name of application file id "org.mozilla.camino"
	end tell
	if application "Camino 1.6" is running then
		tell application "Camino 1.6" to activate
		tell application "System Events"
			tell application "System Events" to keystroke "r" using {command down}
		end tell
	end if
on error
	-- do nothing
end try

try
	tell application "Finder"
		name of application file id "org.webkit.nightly.WebKit"
	end tell
	if application id "org.webkit.nightly.WebKit" is running then
		tell application id "org.webkit.nightly.WebKit"
			set sameURL to URL of current tab of front window
			set URL of current tab of front window to sameURL
		end tell
	end if
on error
	-- do nothing
end try
