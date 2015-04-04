"Reference Computer implementation" by "Woradorn K."

[Line break is EVERYTHING here <Seriously? WTF!>]
RoomA is a room. 
<<<<<<< HEAD
Computer is an object. HELP Computer is in roomA. "Go play with the computer already!".

The description of the Computer is "Welcome to the [bold type]H[roman type]andbook for [bold type]E[roman type]xemplary [bold type]L[roman type]earning [bold type]P[roman type]ractices. This is a fake UNIX terminal. Read the source code to see list of commands."
When play begins: say "Please examine the computer.".
=======
HELP Computer is an object. HELP Computer is in roomA.

The description of the HELP Computer is "Welcome to the [bold type]H[roman type]andbook for [bold type]E[roman type]xemplary [bold type]L[roman type]earning [bold type]P[roman type]ractices. In order to logon to this terminal, you'll need to enter the correct password."
>>>>>>> origin/master

chapter 1 - Actual computer

currUsr is a text variable.
currMch is a text variable.
currDirTxt is a text variable.
currDir is a list of text variable.

currUsr is "guest".
currMch is "HELP".
currDir is usually {"home", "[currUsr]"}.
currDirTxt is usually "/home/[currUsr]".

After examining the HELP Computer:
	now currDirTxt is "[currDir in brace notation]";
	replace the regular expression "\[quotation mark]\,\s\[quotation mark]" in currDirTxt with "/";
	replace the text "[quotation mark]}" in currDirTxt with "/";
	replace the text "{[quotation mark]" in currDirTxt with "/";
	now the command prompt is "[currUsr]@[currMch]:[currDirTxt]$>";
	[continue the action.]
	[continue the action.]
	reject the player's command.
	
After reading a command when the command prompt matches the regular expression ".*@.*:.*\$>" and the player's command matches the regular expression "exit| exit *":
	now the command prompt is ">";
	reject the player's command. 

After reading a command when the command prompt matches the regular expression ".*@.*:.*\$>":
	let strFullCmd be indexed text;
	[strPLC is player's command;]
	let strFullCmd be player's command;
	[strCmd is a text variable;]
	let strCmd be word number 1 in strFullCmd;
	let strParam be indexed text;
	let strParam be player's command;
	replace word number 1 in strParam with "";
	replace character number 1 in strParam with "";
<<<<<<< HEAD
	[say "CMD: [strCmd] Param: [strParam][line break]";]
=======
	say "CMD: [strCmd] Param: [strParam][line break]";
>>>>>>> origin/master
	if (strCmd matches the text "emacs"):
		say "vi master race.";
	else if (strCmd matches the text "vi"):
		say "emacs master race.";
	else if (strCmd matches the text "cd"):
<<<<<<< HEAD
		choose row with dir of currDirTxt in the table of fileindir;
		let subList be memberFolder entry;
		if (strParam matches the text ".."):
			remove entry (the number of entries of currDir)  from currDir;
		else if strParam is listed in subList:
			add strParam to currDir;
		else:
			say "Can't do that";
=======
		if (strParam matches the text ".."):
			remove entry (the number of entries of currDir)  from currDir;
		else:
			add "[strParam]" to currDir;
		[say "cd done";]
>>>>>>> origin/master
		now currDirTxt is "[currDir in brace notation]";
		replace the regular expression "\[quotation mark]\,\s\[quotation mark]" in currDirTxt with "/";
		replace the text "[quotation mark]}" in currDirTxt with "/";
		replace the text "{[quotation mark]" in currDirTxt with "/";
		now the command prompt is "[currUsr]@[currMch]:[currDirTxt]$>";
<<<<<<< HEAD
	else if (strCmd matches the text "ls") or  (strCmd matches the text "dir")  :
=======
	else if (strCmd matches the text "ls"):
>>>>>>> origin/master
		say "At: [currDirTxt][line break]";
		choose row with dir of currDirTxt in the table of fileindir;
		say "Contain folder: [memberFolder entry][line break]";
		say "Contain file: [memberFile entry][line break]";
	else:
		say "wtf?";
	reject the player's command.
	
chapter 2- Data

Table of fileInDir
<<<<<<< HEAD
dir			memberFolder		memberFile
"/"			{"home", "mnt"}		{}
"/mnt/"			{}		{}
"/home/"			{"guest"}		{}
"/home/guest/"			{"Download","Documents"}		{"diary.txt"}
"/home/guest/Download/"			{}		{}
"/home/guest/Documents/"			{}		{"deathRateStat.csv"}

Table of fileContent
url							fileContent
"/home/guest/diary.txt"							"This is my diary. Shame on you for reading it."
=======
dir		memberFolder		memberFile
"/home/guest/"		{"Download","Documents"}		{"diary.txt"}
>>>>>>> origin/master
