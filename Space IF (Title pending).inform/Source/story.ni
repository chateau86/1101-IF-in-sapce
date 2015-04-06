"Space IF (Title pending)" by "W.K."

[IF test file, please ignore]
[Worst. Programming Language. Ever. A JVM written in php would still be better!]
[Opening passage]
Volume 0 - Meta declaration

[Stolen from Meaningful Instructions]
	Underlying relates various things to one thing. The verb to underlie means the underlying relation. The verb to be under means the underlying relation. The verb to be beneath means the underlying relation.

	Instead of looking under a thing which is underlaid by something (called the lost object):
		Say "You've discovered [the list of things which underlie the noun]!";
		now every thing which underlies the noun is carried by the player;
		now every thing which underlies the noun does not underlie the noun.
[End Stolen from Meaningful Instructions]

Volume 1 - Rocket

When play begins: say  “You can’t believe you’ve finally made it. It seems like forever since you boarded the small rocket. Your journey from Earth to the planet ____ has taken almost a year, even though you were traveling as close to light speed as is possible. You were chosen from random lottery to be sent to the new colony on ___ because Earth is falling apart due to climate change and dwindling resources. It is time to start your new life on this great new planet. However you should probably put on your gear first.”

The Rocket Interior is a room. The player is in the rocket interior. The description of Rocket interior is “The interior of the rocketship is almost entirely white. There is a cramped cot built into one side of the room with a small nightstand next to it. On the opposite side of the room is a small cubicle that leads to the bathroom. Taking up most of the space in the rocket is a chest in which you have been keeping all of your personal belongings. Across from this chest is the hatch that leads to outside of the rocket."

	Chest is in Rocket Interior. Chest is an object. Chest is fixed in place. Chest is closed. Chest is openable. 
	Carry out opening chest: say "Inside the chest you see a neatly folded blue uniform that every new member to the colony wears amongst all of the other clothes you have been wearing on your journey."

		Uniform is an object. Uniform is in the chest. Uniform is wearable.
		description of uniform is "A neatly folded blue uniform that every new member to the colony wears amongst all of the other clothes you have been wearing on your journey.".
		Carry out wearing:
			say "You pull on the comfortable outfit and get ready to leave your rocket for good."
			
	Nightstand is in Rocket interior. Nightstand is object. Nightstand is fixed in place.
	Description of nightstand is “The nightstand is a small table with a single drawer. It has a small lamp which is providing light for the tiny room.”
	
		The nightstand support a lamp. the lamp is fixed in place. 
		Description of lamp is "$1million in R&D gave us this $5.99 IKEA lamp. Everything is more expensive in Aerospace, they said."
	
		The nightstand support a drawer. the drawer is closed. the drawer is openable.
		Carry out opening drawer: say “You open the drawer and see wrappers from the candy bars you smuggled onto the ship before you departed and inevitably ate within the first month, despite telling yourself you would save at least one for when you reached your destination. Under the wrappers you can see something made of plastic.”
	
		candy wrapper is in drawer.
		
		ID card is in the drawer. id card underlie the candy wrapper.

The Rocket Bathroom is a room. It is down of the Rocket interior.
	instead of going down from Rocket interior: say "You’ve already done everything you have to in there today."


Rocket door is a door.  rocket door is closed. rocket door is north of rocket interior. through it is the outsideWorld.

 
OutsideWorld is a room. [temporary hackjob] [OutsideWorld room is north of rocket door.] 