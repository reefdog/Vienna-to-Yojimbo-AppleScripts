## ABOUT

Once upon a time, Brent Simmons' excellent [NetNewsWire](http://www.newsgator.com/Individuals/NetNewsWire/ "For years, NetNewsWire set the bar for stability and simplicity in Mac feed readers. Then version 3 happened.") and Bare Bones Software's superb [Yojimbo](http://www.barebones.com/products/yojimbo/ "Yojimbo is an everything bucket that works.") were brought together in holy union by John Gruber's [NetNewsWire-to-Yojimbo scripts](http://daringfireball.net/2007/05/yojimbo_netnewswire_mailsmith "Daring Fireball: Yojimbo Import Scripts for Mailsmith and NetNewsWire"). This trifecta formed the backbone of my day.

And then, for various undisclosed reasons that rhyme with "schmersion 3 is bruggy", I switched from NNW to [Vienna](http://www.vienna-rss.org/ "Vienna is an open-source Mac OS X feed reader that doesn't sync anywhere but is stable and works well.") as my feed reader of choice. Without the Yojimbo-funneling scripts, however, my life was empty and incomplete.

AND SO, here are my ports of those scripts to work with Vienna, with a few inconsistencies and bugs cleaned up along the way. A huge THANKS to John for releasing the initial scripts, and (per his notice) to Fraser Speirs for the initial heavy lifting.

## USAGE

I'm fairly certain that if you're looking for these, you know how to use them. But still: when you invoke these scripts (I suggest assigning keyboard shortcuts with [FastScripts](http://www.red-sweater.com/fastscripts/ "FastScripts lets you assign shortcuts to AppleScripts, and now it's free for 10-shortcut use so get downloading you miser.")), a dialog will prompt you to enter tags (separated by comma-space, like so: "`, `"), and the currently-selected Vienna article will be bookmarked or archived into Yojimbo. It uses [Growl](http://growl.info/ "Growl does notifications and stuff and look everybody uses it so just download it."), so that's probably required.

## MODIFICATION

If you think tags are for sissies, you can delete the `--prompt` for tags block and the `add_tags` line. I'm not giving you any more help because it might be a felony to encourage your messiness.

## TODO

Vienna doesn't currently expose its web-browsing tabs to AppleScript AFAIK, so if you invoke the scripts while a web-browsing tab is active, they'll act on the currently-selected item in the Articles tab; I'll modify the scripts to act on the active web-browsing tab once Vienna supports it.

## WARRANTIES

None. Use at your own risk.