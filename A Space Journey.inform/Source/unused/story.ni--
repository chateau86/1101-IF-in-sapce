The story genre is "Science Fiction". The story headline is "A Space Journey". The story creation year is 2015. 

Chapter 1 - Story

When play begins:
say "[italic type]It is the year 2315, you are an astronaut who embarks on a journey a new planet, due to overpopulation and climate change destroying valuable resources on Earth. The planet is located in a different galaxy and accessible only through a wormhole. The planet, Xuria, has been found to be teeming with exotic plant life, quite habitable compared to Earth.


---------------------------------------------------------------------------------------------------------------




[bold type]You can’t believe you’ve finally made it. It seems like forever since you boarded the small rocket. Your journey from Earth to the planet Xuria has taken almost a year, even though you were traveling as close to light speed as is possible. You were chosen from random lottery to be sent to join the experimental colony on Xuria because Earth is falling apart due to climate change and dwindling resources. It is time to start your new life on this great new planet. However you should probably put on your gear first. There might be fire or sharp fragments of the ship outside after that rough landing.”


The Mid Deck is a room. "The interior of the rocketship is almost entirely white. There is a cramped cot built into the east side. On the west side of the room is a small cubicle that leads to the bathroom.  On the other side of the room is a ladder leads to the flight deck above and a lower deck below. A brochure of the rocket is pinned onto the wall.”


The Lower Deck is a room. "There is a hatch on the side where you can leave the ship. The lower deck is large and filled with rooms you don't care about. There is a ladder where you climbed down from the mid deck." 


The Flight Deck is a room. [For now] "Why would you need to do anything here? You just go onto this planet."


The Your Room is a room. "The majority of space in the room is taken up by the chest that you kept all your belongings in. Next to your makeshift 'bed' is a small nightstand."


The Bathroom is a room. “You’ve already done everything you have to in here today.”


The Main Town is a room.


The Town Hall is a room. Desk is an object. desk is fixed in place. Computer is an object. Computer is fixed in place.


The Hospital is a room.


The Johnson's Office is a room.


The Johnson's Hall is a room.


The Johnson's Dining Area is a room.


The Johnson's Daughter's Bedroom is a room.


The Johnson's Study is a room.


The Johnson's Basement is a room.

Chapter 2 - Meta - Computer

chapter 2-1 - Actual computer

currUsr is a text variable.
currMch is a text variable.
currDirTxt is a text variable.
currDir is a list of text variable.

currUsr is "guest".
currMch is "HELP".
currDir is usually {"home", "[currUsr]"}.
currDirTxt is usually "/home/[currUsr]".

After examining the Computer:
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
	[say "CMD: [strCmd] Param: [strParam][line break]";]
	if (strCmd matches the text "emacs"):
		say "vi master race.";
	else if (strCmd matches the text "vi"):
		say "emacs master race.";
	else if (strCmd matches the text "cd"):
		choose row with dir of currDirTxt in the table of fileindir;
		let subList be memberFolder entry;
		if (strParam matches the text ".."):
			remove entry (the number of entries of currDir)  from currDir;
		else if strParam is listed in subList:
			add strParam to currDir;
		else:
			say "Can't do that";
		now currDirTxt is "[currDir in brace notation]";
		replace the regular expression "\[quotation mark]\,\s\[quotation mark]" in currDirTxt with "/";
		replace the text "[quotation mark]}" in currDirTxt with "/";
		replace the text "{[quotation mark]" in currDirTxt with "/";
		now the command prompt is "[currUsr]@[currMch]:[currDirTxt]$>";
	else if (strCmd matches the text "ls") or  (strCmd matches the text "dir")  :
		say "At: [currDirTxt][line break]";
		choose row with dir of currDirTxt in the table of fileindir;
		say "Contain folder: [memberFolder entry][line break]";
		say "Contain file: [memberFile entry][line break]";
	else if (strCmd matches the text "cat"):
		let fileName be "[currDirTxt][strPAram]";
		[say "[filename]";]
		if filename is a url listed in Table of fileContent:
			say "-----[line break][fileContent corresponding to url of filename in table of FileContent][line break]-----";
		else:
			say "file not found";
	else:
		say "Command not recognized";
	reject the player's command.
	
chapter 2-2- Data

Table of fileInDir
dir			memberFolder		memberFile
"/"			{"home", "mnt"}		{}
"/mnt/"			{}		{}
"/home/"			{"guest"}		{}
"/home/guest/"			{"Download","Documents"}		{"diary.txt"}
"/home/guest/Download/"			{}		{}
"/home/guest/Documents/"			{}		{"deathRateStat.csv"}

Table of fileContent
url		fileContent
"/home/guest/diary.txt"		"This is my diary. Shame on you for reading it."
"/home/guest/Documents/deathRateStat.csv"		"Date,	Death.[line break]B4 OrangeDay,	5[line break]OrangeDay,	0[line break]AfterOrangeDay,	28"