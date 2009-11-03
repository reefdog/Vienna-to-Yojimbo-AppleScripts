(*
Create Yojimbo Bookmark From Vienna
Justin Reese, 3 November 2009
http://justinreese.com/vienna-to-yojimbo-applescripts

Based entirely on this script by John Gruber, who deserves most of the credit:
http://daringfireball.net/misc/2007/05/nnw-to-yojimbo-bookmark
Which in turn was based heavily on a script by Fraser Speirs that is no longer online.

Usage: When invoked, a new Yojimbo bookmark will be created based on
the currently selected headline in Vienna. The script prompts
for tags, which must be separated by ", " — that is, comma-space.
*)


tell application "GrowlHelperApp"
	set the allNotificationsList to {"Success Notification", "Failure Notification"}
	set the enabledNotificationsList to {"Success Notification", "Failure Notification"}
	
	register as application ¬
		"Vienna to Yojimbo Script" all notifications allNotificationsList ¬
		default notifications enabledNotificationsList ¬
		icon of application "Vienna"
end tell

tell application "Vienna"
	try
		if exists current article then
			set selectedArticle to the current article
			set selectedArticleURL to the link of selectedArticle
			set selectedArticleTitle to the title of selectedArticle
			
			-- prompt for tags
			set _tags to {}
			try
				display dialog "Tags:" default answer ""
				set _answer to text returned of result
				if _answer is not "" then
					set AppleScript's text item delimiters to ", "
					set _tags to text items of _answer
				end if
			end try
			
			tell application "Yojimbo"
				set _new_item to (make new bookmark item with properties {name:selectedArticleTitle, location:selectedArticleURL})
				set name of _new_item to selectedArticleTitle
				add tags _tags to _new_item
			end tell
			
			tell application "GrowlHelperApp"
				notify with name ¬
					"Success Notification" title ¬
					"Import Success" description "Successfully bookmarked \"" & selectedArticleTitle & ¬
					"\" into Yojimbo." application name "Vienna to Yojimbo Script"
			end tell
		else
			error "No headline is selected."
		end if
	on error error_message number error_number
		tell application "GrowlHelperApp"
			notify with name ¬
				"Failure Notification" title ¬
				"Import Failure" description "Failed to bookmark article into Yojimbo. Error: " & ¬
				error_message application name "Vienna to Yojimbo Script"
		end tell
	end try
end tell
