"Reference Computer implementation" by "W.K."

RoomA is a room. HELP Computer is in the room.



The description of the HELP Computer is "Welcome to the [bold type]H[roman type]andbook for [bold type]E[roman type]xemplary [bold type]L[roman type]earning [bold type]P[roman type]ractices. In order to logon to this terminal, you'll need to enter the correct password."

After examining the HELP Computer:
	now the command prompt is ">";
	continue the action.
	
	if the player's command matches "time":
		say "The computer pauses for a moment, then a message appears on the screen. 'Well done! You have completed the game. If you navigate to the following site <http://bit.ly/1CgSMLW> you can find the complete instructions for your Inform 7 assignment.'";
		now the command prompt is ">";
	otherwise:
		say "That password is incorrect.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
		reject the player's command.
	
	After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y":
		now the command prompt is "Please enter the password now. >";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n":
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.