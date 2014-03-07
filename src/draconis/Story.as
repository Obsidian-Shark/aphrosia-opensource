package draconis {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	import draconis.*;
	import draconis.locations.city.*;
	
	public class Story {

		public function Story() {
			// constructor code
		}
		public static function mainStory(eventNum:Number) {
			Core.flags.activeGame = true;
			Core.screens.game.refreshScreen();
			Core.buttons.flushBtns();
			var amulet:Object = { "name":"Family Amulet", "type":"Collectible", "value":0, "count":1 };
			//INTRODUCTION
			if (eventNum == 01) {
				Core.text.gameOutput("You wake up, expecting it to be morning but, instead, you find yourself staring up at a endless, blank sky as it shifts from hues of violet to inky indigo. The surface underneath you isn’t the soft fabric of your mattress but hard, cold black stone. You recall that you fell asleep in your own bed at curfew but how you got here… this must be a dream you think to yourself. Simply a strange dream. You get to your feet and have a look around, only to find that the rock is actually quite small and floating in the middle of, well, nothing. There are other rocks around you of various sizes and shape but they are too far away to attempt jumping to. You seem to be the only soul present in this strange landscape.", true);
				Core.text.gameOutput("\r\rThe strange sense of being watched creeps up the back of your neck but, again, there is no one here by you. You pinch yourself to double check and feel no pain. Definitely a dream… however, you feel like you’ve been here before. You feel like you should know this place but this is the first time you can recall ever seeing it.", false);
				Core.text.gameOutput("\r\rYou suddenly hear… something. At first, it’s very faint and hard to make out but the sound steadily gets louder until you realize someone is shouting your name. Your name… what is your name? You seem to have a hard time remembering it now.", false);
				Core.screens.game.nameInput.visible = true;
				Core.buttons.button(1, "Confirm", 02);
			}
			if (eventNum == 02) {
				if (Core.screens.game.nameInput.text == "") {
					Core.text.gameOutput("Pick a name, dunce.", true);
					Core.buttons.button(1, "Confirm", 02);
				}
				else {
					Core.events.setPlayerName();
					Core.text.gameOutput("“"+Core.pc.name+"! Get the hell up, you lazy bum!” A familiar, masculine voice calls.", true);
					Core.text.gameOutput("\r\rThe rock under you suddenly pitches and you’re thrown into free-fall… only to wake up hitting the wooden floor of your bedroom, the bedsheets tangled around you. A figure looms over-head as you, groggily, try to sit up. When your vision refocuses, you realize that it is your brother standing over you, likely the one who just tipped you out of bed.", false);
					Core.text.gameOutput("\r\r“About time! Ma’s been calling for you for the past half hour. There’s work to be done!” He chides, laughing at you.", false);
					Core.buttons.button(1, "Scold", 03);
					Core.buttons.button(2, "Throw", 04);
				}
			}
			//Scold your older brother for being a douche
			if (eventNum == 03) {
				Core.text.gameOutput("“Dammit Roland, how many times have I told you not to do that?!” You snap at him, rubbing at the sore spot on the back of your head as you get to your feet, throwing the bedsheet back onto your bed.", true);
				mainStory(05);
			}
			//Throw your pillow at Roland for being a douche
			if (eventNum == 04) {
				Core.text.gameOutput("“Fuck you Roland!” You snap as you grab your pillow and chuck it at his head. Used to this, Roland ducks and avoids getting hit.", true);
				Core.events.addAggro();
				mainStory(05);
			}
			if (eventNum == 05) {
				Core.text.gameOutput("\r\rRoland laughs again before telling you to hurry and come downstairs. Apparently, your mother has some chores for you to do. Meanwhile, Roland is going out to the fields to help  your father and the other farmers to prep the land for new plants. Begrudgingly, you make your bed and head into the washroom to clean up and change into a fresh tunic, pair of soft breeches, and shoes. You take a moment to look in the mirror, studying your own face…. but maybe that fall knocked your head harder than you had thought. What are you??", false);
				Core.buttons.button(1, "Male", 06);
				Core.buttons.button(2, "Female", 07);				
			}
			//You are a dude
			if (eventNum == 06) {
				Core.screens.game.pcPane.visible = true;
				Core.text.gameOutput("You run a hand over your strong jawline as you admire your masculine face, though you have yet to even start growing stubble. It’s kind of uncanny how much you are starting to looking like your father. Your short, brown hair is a complete mess and there’s still flecks of sleep crusted in the eyelashes around your brown eyes. You hurriedly wash your face and run your fingers through your hair like a comb before heading downstairs.", true);
				Core.events.isMale();
				mainStory(08);
			}
			//You are a chick
			if (eventNum == 07) {
				Core.screens.game.pcPane.visible = true;
				Core.text.gameOutput("You run a hand over your ear to tuck back a loose bang of long, brown hair, admiring your feminine face. It’s kind of uncanny how much you are starting to look like your mother. Your hair is a complete mess and there’s still flecks of sleep crusted in the long eyelashes around your brown eyes. You, hurriedly, wash your face and run a brush through your hair to get it under control before heading downstairs.", true);
				Core.events.isFemale();
				mainStory(08);
			}
			if (eventNum == 08) {
				Core.text.gameOutput("\r\rA powerful, delicious smell greets you at the bottom of the stairs. It seems like your mother is hard at work in the kitchen preparing tonight’s dinner. You debate sneaking past but Roland made it sound like you were already in enough trouble for sleeping in. Along with your mother, your young twin sisters are helping her out. Unlike the rest of your family, which has brown hair and brown eyes, they have black hair and blue eyes… which makes you question if they really are your sisters from time to time. They spot you, ruining any chance of escaping the house unnoticed. Your mother turns around and gives you a very stern glare, wooden spoon in hand. You flinch a little, hoping she’s not going to hit you with it this time.", false);
				Core.text.gameOutput("\r\r“About time you got up! There’s work to be done and I have half a mind to tan your hide so you can’t sit for a week!” She threatens, waving the spoon in your direction, your sisters giggling.", false);
				Core.text.gameOutput("\r\rLuckily, you avoid being disciplined this time. Instead, your mother needs you to run a delivery into the village. Jorgen, who runs the Iron Sickle Tavern in Tyr is expecting the fresh loaves of bread she has just baked. You bundle them up as quickly as possible and head out on your way.", false);
				Core.text.gameOutput("\r\rIt’s a very nice day out; clear skies, slight breeze, warm sun… perfect conditions to sneak off and enjoy the day yourself… once the opportunity presents itself. First, however, you should deliver this bread to Jorgen.", false);
				Core.buttons.button(1, "Next", 09);
			}
			//Arrive in Tyr Village
			if (eventNum == 09) {
				Core.text.gameOutput("Tyr Village is only a short walk from your home. It’s not a very big village but it lies close to the Merchant Highway, so plenty of travelers pass through, especially this time of year when the surplus from the last harvest is being traded and sold for other goods the village needs. As expected, the place is quite busy. Merchant carts fill the wide road that runs through the center of the village. There’s a large concentration of people coming in and out of the Iron Sickle… but then it’s the only place in Tyr where travelers can get food, drink, and a room to rest if they need it.", true);
				Core.text.gameOutput("\r\rYou squeeze in through the entrance to the tavern, only to find the interior is nearly over-flowing with townsfolk and travelers alike. You spot Jorgen at the bar, pouring drinks and chatting with customers sitting there. His wife is constantly weaving her way around the crowded tables, carrying trays laden with food and drink. It takes a while and some effort for you to reach the bar and get Jorgen’s attention. When he finally spots you, he immediately shouts you over, forcing two patrons to make room so you can get around the bar.", false);
				Core.text.gameOutput("\r\r“"+Core.pc.name+"! So good to see you. Is that the bread from your mom I asked for?” He greets, giving you a big hug before you hand him the bundle of bread loaves.", false);
				Core.text.gameOutput("\r\rHe checks the loaves and smiles, thanking you for the delivery, even though it’s a bit late. Unfortunately, the tavern is so busy, Jorgen doesn’t have any time to chat with you, so you leave. Once you’re free of the stuffy tavern, you feel much better. Since you’ve got some free time now, you can explore the village a bit or head back home and grab your fishing pole before heading into the forest.", false);
				Core.buttons.button(1, "Next", 10);
			}
			//Explore Tyr Village
			if (eventNum == 10) {
				//Core.screens.game.btnInventory.visible = true;
				//Core.screens.game.btnProfile.visible = true;
				Core.screens.game.btnSaveGame.visible = true;
				Core.text.gameOutput("You stand in the central road of the small village you call home. There are carts all over the place as merchants from all over the realm pass by on the nearby Merchant Road. You recognize several villagers you’ve grown up with.", true);
				Core.text.gameOutput("\r\rYou spot the minotaur, Argo, working at the front of his blacksmith shop. Despite all the noise, you can clearly hear the ring of hammer hitting metal on the anvil.", false);
				if (Core.flags.tyr_DayWithBrian == false && Core.flags.tyr_DayWithSasha == false) {
					Core.text.gameOutput("\r\rYour friends Sasha and Brian, brother and sister, are hanging around a merchant’s cart while their father is speaking with the driver. They look pretty bored, so they might enjoy having your company to distract them.", false);
					Core.buttons.button(2, "Friends", 19);
				}
				Core.text.gameOutput("\r\rThere’s a group of soldiers hanging around near the Iron SIckle. You’ve never seen soldiers in Tyr before. They wear black armor and you notice one is carrying a red banner with a hound with three heads, a crown on each, embroidered in black and gold thread. The emblem feels familiar to you...", false);
				Core.text.gameOutput("\r\rThe Iron Sickle remains extremely busy. You could try talking to Jorgen or his wife, Celine, but given how crowded the place still looks, they may not be able to.", false);
				Core.text.gameOutput("\r\rReturning home is a short trip from the main road in the village. You should probably return at some point before your mother sends your sisters to come look for you… or she comes looking herself.", false);
				Core.buttons.button(1, "Smithy", 11);
				Core.buttons.button(3, "Soldiers", 22);
				Core.buttons.button(4, "Tavern", 23);
				Core.buttons.button(5, "Go Home", 24);				
			}
			//Check out Argo's smithy
			if (eventNum == 11) {
				if (Core.flags.tyr_FlirtedWithArgo) {
					Core.text.gameOutput("You try to get Argo’s attention as he works at the furnace. It takes a few minutes before he has a moment to turn his attention to you. He still seems a bit flustered and doesn’t make eye contact with you for very long.", true);
					Core.text.gameOutput("\r\r“I… sorry "+Core.pc.name+", but I have too much work to do right now.” You barely hear him say before he goes back to work.", false);
					Core.text.gameOutput("\r\rSince trying to engage him in further conversation seems futile right now, you leave him to his work. Maybe he’ll want to talk later. You hope you haven’t hurt his feelings or anything with what you had told him earlier.", false);
					Core.buttons.button(1, "Leave", 10);
				}
				else {
					Core.text.gameOutput("You decide to visit Argo at his blacksmith shop. You’ve known the grizzled minotaur since you were little. He is one of the few Aphrosia natives that lives in Tyr. He has his back to you, still hammering a glowing piece of metal on his anvil. You, patiently, wait until he straightens up and drops the piece of metal into a barrel of water to cool it. The water steams and sizzles loudly as the metal rapidly cools. As he pulls it out to admire his work, Argo catches sight of you from the corner of his eyes. He smiles as he fully turns to face you, setting aside hammer and rod and wiping his big three-fingered hands on his stained smock.", true);
					Core.text.gameOutput("\r\rArgo is one of the tallest people in Tyr, standing at around seven feet tall. His broad chest and beefy arms seem to be precariously balanced on a slender abdomen and hips, but his thick, hooved legs and tail help keep him balanced. His black fur and mane of hair is starting to pepper with hairs of grey and white, giving him a grizzled appearance. His horns are carefully cut short and blunted to keep from accidentally hurting someone. A thick, hammered iron ring hangs from his wide nostrils on his short, bovine muzzle. His gentle, brown eyes always hold a glimmer of mirth and wisdom that makes you smile whenever you see him.", false);
					Core.text.gameOutput("\r\r“"+Core.pc.name+"! This is a pleasant surprise. What trouble did you decide to cause today?” He greets in a deep, soothing voice, giving your hair a friendly tossle.", false);
					Core.buttons.button(1, "Talk", 12);
					Core.buttons.button(2, "Flirt", 13);
					if (Core.flags.tyr_HelpedArgoAtShop == false) {
						Core.buttons.button(3, "Help", 17);
					}
					Core.buttons.button(4, "Leave", 18);					
				}
			}
			//Talk to Argo
			if (eventNum == 12) {
				Core.text.gameOutput("You decide to ask Argo how his day is going and what he’s working on. He snorts loudly, bovine ears flicking back and forth as he crosses his thick arms over his broad chest.", true);
				Core.text.gameOutput("\r\r“Fixing a broken wheel axle. Third one today. You’d think these merchants would take better care of their carts. I still have a few more orders to fill out before the sun sets… as long as another cart doesn’t break down.” He grumbles, obviously not pleased with being stuck with such mundane work.", false);
				Core.text.gameOutput("\r\rYou two chat for a bit longer about various things. You glance past Argo, remembering the soldiers you spotted earlier. You see that they are still standing there, as if waiting for something or maybe just keeping watch. Argo notices your gaze and turns his head enough to look behind him. He scowls and snorts in disapproval.", false);
				Core.text.gameOutput("\r\r“Be careful around them. I don’t know where they come from… probably mercenaries, but they’ve been here since I opened up shop.” Argo warns you, giving you a stern look.", false);
				Core.text.gameOutput("\r\r“Mercenaries? This far out?” You ask, about surprised. You’ve never seen mercenaries that wear full plate armor before.", false);
				Core.text.gameOutput("\r\r“Maybe… the realm has been unsettled as of late but Tyr is so remote, it’s probably not much to be concerned about. Still, don’t go messing around them "+Core.pc.name+". They don’t look all that friendly.” The minotaur answers you, something in his tone of voice betraying a more serious suspicion.", false);
				Core.text.gameOutput("\r\rThe conversation tapers off shortly after and Argo tells you he has to get back to work. You give the big minotaur a hug before heading off on your way.", false);
				Core.buttons.button(1, "Next", 10);				
			}
			//Flirt with Argo
			if (eventNum == 13) {
				Core.text.gameOutput("You smirk a little and rest a hand on Argo’s side, digging your fingers into his coarse black fur. He looks down at your arm before angling his head to give you a quizzical look. You swallow your nerves and tighten your grip a bit to give yourself some leverage.", true);
				Core.text.gameOutput("\r\r“You know, the silver in your fur gives a very distinguished look.” You say in a joking manner.", false);
				Core.text.gameOutput("\r\r“Are you trying to make fun of me, "+Core.pc.name+"?” He asks, a small smile tugging at his bovine muzzle.", false);
				Core.buttons.button(1, "Be Direct", 14);
				Core.buttons.button(2, "Subtle", 15);				
			}
			//Tell Argo outright you are attracted to him
			if (eventNum == 14) {
				Core.text.gameOutput("You decide there’s no point in skirting around the subject. With your luck, it would all go over the minotaur’s thick skull. The best course of action is to be completely direct with him. You tell him exactly what’s on your mind, laying a hand on him as you tell him that you are quite interested in him… in more ways than one.", true);
				Core.events.addAggro();
				mainStory(16);
			}
			//Skirt around the subject that you find Argo attractive
			if (eventNum == 15) {
				Core.text.gameOutput("You decide to try and be coy about how you feel about the minotaur, hoping he’ll understand. You give him a few flirty compliments, trying to lead him into drawing the conclusion on his own. You place a hand on his arm as you start to focus a little too much on his physical appearance, watching his face to see when it will click... ", true);
				mainStory(16);
			}
			if (eventNum == 16) {
				Core.text.gameOutput("\r\rArgo’s eyes widen and his nostrils flare a bit as it finally sinks in after a few moments. You see the fur on this throat twitch as he swallows and he hastily clear his throat. Gently, he pulls your hand away but doesn’t let go. He sinks to one knee so he’s about eye-level with you, cupping his other hand around yours so both hands fully cover your hand.", false);
				Core.text.gameOutput("\r\r“L-listen "+Core.pc.name+"... I appreciate the kind words but I… I just… you should go.” He says, sounding oddly meek.", false);
				Core.text.gameOutput("\r\rHe let’s go of you, quite obviously very flustered. Since Argo seems rather uncomfortable now and keeps looking away from you, you decide to leave the minotaur to his work and thoughts, though feeling a little crestfallen about the rejection.", false);
				Core.flags.tyr_FlirtedWithArgo = true;
				Core.buttons.button(1, "Leave", 10);
			}
			//Help Argo out around his shop
			if (eventNum == 17) {
				Core.text.gameOutput("You ask Argo if he needs any help around his shop. He accepts your offer, saying he could use an extra pair of hands with tidying up the smithy a bit. He hands you a leather smock more suited to your size to put on. Once ready, he sets you right to work moving tools, organizing materials, and sweeping the floor. It’s hard, dirty work but it only take about an hour so before you two are finished.", true);
				Core.text.gameOutput("\r\r“Thanks for the help, "+Core.pc.name+". Here, for your efforts.” Argo thanks, giving you a firm pat on the back before handing you a handful of sigils.", false);
				Core.text.gameOutput("\r\rFinished for now, you take the smock off and hand it back to Argo. Having to get back to work, you give the minotaur a hug before leaving.", false);
				Core.pc.sigils += 26;
				Core.pc.str += 1;
				Core.flags.tyr_HelpedArgoAtShop = true;
				Core.buttons.button(1, "Next", 10);
			}
			//Leave Argo's Shop
			if (eventNum == 18) {
				Core.text.gameOutput("You bid Argo a good day and let the minotaur get back to work. He gives you a parting hug before returning to his anvil to work on the broken axle he was earlier.", true);
				Core.buttons.button(1, "Next", 10);
			}
			//Check on your friends, Sasha and Brian
			if (eventNum == 19) {
				Core.text.gameOutput("You walk over to where Sasha and Brian are standing, waiting on their father to finish his business with the cart driver. They both spot you and wave, happy to have some company aside from each other. You’ve known these two since the three of you were able to walk. Though the siblings are a year older than you, the three of you are quite close. Both Sasha and Brian have dirty blonde hair and hazel-colored eyes. Brian’s skin is tanned much darker than Sasha’s despite the fact both of them enjoy spending time outdoors like you.", true);
				Core.text.gameOutput("\r\r“And here I was beginning to think we were going to die of boredom out here.” Brian jokes as you finish hugging Sasha.", false);
				Core.text.gameOutput("\r\r“What are you doing in town? I’m surprised your mother doesn’t have you scrubbing the floors at home.” Sasha chimes in.", false);
				Core.text.gameOutput("\r\r“I had to deliver some bread to the tavern but I’ve got a bit of free time. What are you two doing here?” You ask, brushing off their jokes.", false);
				Core.text.gameOutput("\r\rBrian rolls his eyes and tells you that their father is trying to secure some new caravans to transport goods during the winter months. This is the fourth cart driver he’s talked to so far and, apparently, isn’t having much luck. Both Sasha and Brian look very bored and tired with having to stand around and wait. Before you can suggest the three of you going to the creek in the forest, their father calls for one of them to help. Which one will you hang out with?", false);
				Core.buttons.button(1, "Sasha", 20);
				Core.buttons.button(2, "Brian", 21);
			}
			//Hang out with Sasha
			if (eventNum == 20) {
				Core.text.gameOutput("You ask Sasha if she’d like to come join you at the creek in the forest to hang out for a bit. She gives Brian a questioning look but he volunteers to stay so you two can enjoy the rest of the day. You tell her you need to run back home to grab your fishing pole.", true);
				Core.text.gameOutput("\r\r“I’ll meet you there. Don’t get caught by your mother or your sisters. I’ll bet you’d be in real trouble if they found out you were skipping out on chores.” She taunts before hurrying off.", false);
				Core.text.gameOutput("\r\rYou head back to the center of the village to take care of anything else before meeting up with Sasha in Tyr Forest.", false);
				Core.flags.tyr_DayWithSasha = true;
				Core.buttons.button(1, "Next", 10);
			}
			//Hang out with Brian
			if (eventNum == 21) {
				Core.text.gameOutput("You ask Brian if he’d like to come join you at the creek in the forest to hang out for a bit. He is about to decline when Sasha volunteers to stay and help their father out so you two can go enjoy the rest of the day. You tell him you need to run back home to grab your fishing pole.", true);
				Core.text.gameOutput("\r\r“Ok. I’ll meet you there. Don’t get caught by your mother or your sisters. I’ll bet you’d be in real trouble if they found out you were shirking your chores again.” He teases before heading out.", false);
				Core.text.gameOutput("\r\rYou head back to the center of the village to take care of anything else before meeting up with Brian in Tyr Forest.", false);
				Core.flags.tyr_DayWithBrian = true;
				Core.buttons.button(1, "Next", 10);
			}
			//Spy on the Soldiers
			if (eventNum == 22) {
				Core.text.gameOutput("You wander closer to the soldiers to get a better look at them. There’s only about a dozen of them, all dressed in shiny black plate and wearing helms. The one holding the banner has a surcoat on and seems to be the one in charge. You try to find a place to hide and eavesdrop on them but there’s nothing close enough and you don’t want to get yourself into trouble. You head back to the center of the village to find something else to do.", true);
				Core.buttons.button(1, "Next", 10);
			}
			//Visit the Iron Sickle Tavern again
			if (eventNum == 23) {
				Core.text.gameOutput("You go back to the Iron Sickle Tavern to see if you can talk with Jorgen or his wife but as before, the place is incredibly crowded and busy. You can see his wife and the other tavern wenches carrying trays back and forth. Jorgen is diligently tending to the bar and the patrons sitting at it. You decide to head back to the center of the village, since there’s nothing you can really do here.", true);
				Core.buttons.button(1, "Next", 10);
			}
			//Go Home
			if (eventNum == 24) {
				Core.text.gameOutput("With nothing left to do in the village, you turn and head back home. However, you have no intention of letting your mother rope you into more chores. Today is just too perfect to miss out on. Instead of going through the front door, you circle around to the side of the house, carefully avoiding the windows. Luckily, the window to the room you share with Roland is right above the porch awning. You climb up with ease and get to the window, which is always unlocked. You climb inside, carefully settling yourself on the wooden floor. The floorboards could easily give you away if you step wrong on one.", true);
				Core.text.gameOutput("\r\rAfter carefully navigating the floor, you reach your fishing pole by your bed and grab it. You sneak back to the window and climb out, being sure to close it behind you as to not cause suspicion in-case someone checks the room. You climb down to the ground, checking to make sure no one has spotted you. With the coast clear, you head directly for the forest, which borders the west side of your family’s property.", false);
				Core.buttons.button(1, "Next", 25);
			}
			//Tyr Forest
			if (eventNum == 25) {
				if (Core.flags.tyr_DayWithSasha) {
					Core.text.gameOutput("You arrive at your favorite spot fairly far into the forest that borders the western side of Tyr Village. Here, a creek runs past the roots of a very old white oak tree. Sasha is standing by the tree waiting for you.", true);
					Core.text.gameOutput("\r\r“Took you long enough to get here. I hope it wasn’t because your mom caught you.” She says, smiling mirthfully.", false);
					Core.text.gameOutput("\r\rYou assure her that you snuck in and out without being detected, proudly holding up your fishing pole. She laughs and helps you dig in the bank for worms to use as bait. The two of you sit down and you cast the line and begin the waiting game for your first bite. You and Sasha talk about the harvest and gossip about the latest rumors and such you’ve heard around the village. Sadly,the fish aren’t biting much but you two fill the time with jokes and other games.", false);
					Core.text.gameOutput("\r\r“Hey, "+Core.pc.name+"... I think we should try having sex.” Sasha says rather bluntly and completely out of the blue.", false);
					Core.text.gameOutput("\r\r“Uh… what?” You say, staring at her in disbelief, completely ignoring the gentle tug on your fishing line.", false);
					Core.text.gameOutput("\r\r“I mean, I’ve thought about it and I kinda like you, "+Core.pc.name+". Come on, don’t tell you me you haven’t thought about?” Sasha said, her attention completely focused on you.", false);
					Core.text.gameOutput("\r\rSex has crossed your mind often enough after coming into your own and having that awkward ‘birds and the bees’ talk with your parents a few years back. However… do you really want Sasha to be your first? You two have known each other since you were little and you’ve always trusted her to be there for you when you needed her. Her body has blossomed as well as you take a good look at her. Her hips have widened and her breasts are quite modestly sized. She notices you staring and blushes a little.", false);
				Core.text.gameOutput("\r\r“You… didn’t answer my question, "+Core.pc.name+". Do you want to have sex? I… I’d rather have my first time be with someone I know and trust. Plus… I’ve always kinda liked you.” She asks, giving you a shy smile.", false);
					Core.text.gameOutput("\r\rSasha is quite serious about this and you get the feeling you’re not going to get out of this situation without giving her an answer. Do you want to lose your virginity to Sasha or are you simply not interested in pushing your relationship with her further?", false);
					Core.buttons.button(1, "Do it", 26);
					Core.buttons.button(2, "No way", 27);
				}
				else if (Core.flags.tyr_DayWithBrian) {
					Core.text.gameOutput("You arrive at your favorite spot fairly far into the forest that borders the western side of Tyr Village. Here, a creek runs past the roots of a very old white oak tree. Brian is standing by the tree waiting for you.", true);
					Core.text.gameOutput("\r\r“Took you long enough to get here. I hope it wasn’t because your mom caught you.” He says, smiling mirthfully.", false);
					Core.text.gameOutput("\r\rYou assure him that you snuck in and out without being detected, proudly holding up your fishing pole. He laughs and helps you dig in the bank for worms to use as bait. The two of you sit down and you cast the line and begin the waiting game for your first bite. You and Brian talk about the harvest and gossip about the latest rumors and such you’ve heard around the village. Sadly, the fish aren’t biting much but you two fill the time with jokes and other games.", false);
					Core.text.gameOutput("\r\r“Hey, "+Core.pc.name+"... do you think we should have sex?” Brian says rather bluntly and completely out of the blue.", false);
					Core.text.gameOutput("\r\r“Uh… what?” You say, staring at him in disbelief, completely ignoring the gentle tug on your fishing line.", false);
					Core.text.gameOutput("\r\r“I mean, I’ve thought about it and I kinda like you, "+Core.pc.name+". Have… you ever thought about it?” Brian asked, his attention completely focused on you.", false);
					Core.text.gameOutput("\r\rSex has crossed your mind often enough after coming into your own and having that awkward ‘birds and the bees’ talk with your parents a few years back. However… do you really want Brian to be your first? You two have known each other since you were little and you’ve always trusted him to be there for you when you needed him. His body hasn’t changed much, though he’s put on more muscle and a more masculine physique.", false);
					Core.text.gameOutput("\r\r“You… didn’t answer my question, "+Core.pc.name+". Do you want to have sex? I… I’d rather have my first time be with someone I know and trust. Plus… I’ve always kinda liked you.” He asks, looking directly at you for your answer.", false);
					Core.text.gameOutput("\r\rBrian is quite serious about this and you get the feeling you’re not going to get out of this situation without giving him an answer. Do you want to lose your virginity to Brian or are you simply not interested in pushing your relationship with him further?", false);
					Core.buttons.button(1, "Do it", 26);
					Core.buttons.button(2, "No Way", 27);
				}
				else {
					Core.text.gameOutput("You arrive at your favorite spot, fairly far into the forest that borders the western side of Tyr Village. Here, a creek runs past the roots of a very old white oak tree. You can see fish in the crystal clear water, trying to hide in the shade of the canopy above. You dig up some worms for bait from the bank and cast your line, settling into a comfortable spot as you wait for a bite. You fish for a few hours but, eventually, the warmth of the sun and peacefully atmosphere of the forest lull you into falling asleep for a nice nap.", true);
					Core.buttons.button(1, "Next", 30);
				}
			}
			//Agree to have sex with Sasha/Brian
			if (eventNum == 26) {
				if (Core.flags.tyr_DayWithSasha) {
					Core.text.gameOutput("“Hell, why not? I mean… will this be a one time thing or..” You reply to her, deciding it was worth the try.", true);
					Core.text.gameOutput("\r\r“Depends on how it goes but… I’d like it to be more than a one time thing.” Sasha responded, her blush darkening.", false);
					Core.buttons.button(1, "Next", 28); 
				}
				if (Core.flags.tyr_DayWithBrian) {
					Core.text.gameOutput("“Sure, why not?” You reply to him, deciding it was worth the try.", true);
					Core.text.gameOutput("\r\r“What? Oh! I… actually didn’t think you’d say yes. Uh, ok… didn’t quite plan for this…” Brian stammers, shocked by your reply...", false);
					Core.buttons.button(1, "Next", 29);
				}
			}
			
			//Decline Sasha's/Brian's offer of sex
			if (eventNum == 27) {
				if (Core.flags.tyr_DayWithSasha) {
					Core.text.gameOutput("“I’m sorry but I can’t Sasha.” You tell her a bit bluntly.", true);
					Core.text.gameOutput("r\r\Sasha’s expression falls a little bit but she gives you a wan smile anyway. An awkward silence falls between you two as you go back to fishing. After a few tense minutes, Sasha gets up and stretches.", false);
					Core.text.gameOutput("\r\r“Well, I better head back. I’m sure father is wondering where I’ve run off to now. I’ll… see you around, "+Core.pc.name+".” She says, heading back to the village.", false);
					Core.text.gameOutput("\r\rYou decide to stay here and continue fishing to help clear your mind. However, the fish don’t seem to be in a biting mood. As you sit there and wait, you feel drowsy and, eventually, fall asleep for a nice, comfortable nap.", false);
				}
				if (Core.flags.tyr_DayWithBrian) {
					Core.text.gameOutput("“I’m sorry but I can’t Brian.” You tell him a bit bluntly.", true);
					Core.text.gameOutput("\r\rBrian’s expression falls a little bit but he gives you a wan smile anyway. An awkward silence falls between you two as you go back to fishing. After a few tense minutes, Brian gets up and stretches.", false);
					Core.text.gameOutput("\r\r“Well, I better head back. I’m sure father is wondering where I’ve run off to now. I’ll… see you around, "+Core.pc.name+".” He says, heading back to the village.", false);
					Core.text.gameOutput("\r\rYou decide to stay here and continue fishing to help clear your mind. However, the fish don’t seem to be in a biting. As you sit there and wait, you feel drowsy and, eventually, fall asleep for a nice, comfortable nap.", false);
				}
				Core.buttons.button(1, "Next", 30)
			}
			//Sex with Sasha
			if (eventNum == 28) {
				Core.text.gameOutput("You two stare at each other in awkward silence, Sasha’s blush getting brighter as your own cheeks start to heat up in response. You don’t even realize you’ve been leaning towards her until your lips brush against her’s. A slight gasp escapes Sasha before you close in and seal the deal with a passionately firm kiss. Your tongue writhes and tangles with hers as you pull her body closer to you, hands already pushing her tunic up to expose her breasts.", true);
				Core.text.gameOutput("\r\r“W-wait! "+Core.pc.name+", s-slow down…” Sasha protests, struggling to catch her breath when the two of you part.", false);
				Core.text.gameOutput("\r\rIgnoring her plea, you dip your head down and catch one of her pert nipples between your teeth. She moans and arches her back, pressing her body even closer to you. When you switch to her other breast, leaving her nipple tender and swollen, you slide your hand down under the hem of her pants, fingers finding her undergarments soaked where her slit is. Every stroke and small movement you make with your fingers makes her squirm and moan, her tone escalating.", false);
				if (Core.pc.penisArea > 0) {
					Core.text.gameOutput("\r\rUnable to hold back anymore, you pull both Sasha’s pants and panties off her legs, completely exposing her drooling cunt and swollen clit. As she squirms impatiently underneath you, you hastily undo the ties to your breeches, " + Core.pc.penis() +" already bulging against the fabric in eagerness. After stumbling with the knotted tie for minute or so, you finally get it loose and yank your pants down, freeing your hard "+Core.pc.penis()+".", false);
					Core.text.gameOutput("\r\rSasha stares at your twitching "+Core.pc.penis()+" and immediately changes things up a little on you, forcing you to stand as she sits up and starts fondling your "+Core.pc.testes()+" with one hand and teasing the shaft of your "+Core.pc.penis()+" with her tongue. You dig your hands in her hair as she wraps her lips around the swollen tip of your "+Core.pc.penis()+" and sucks. Your knees start to tremble as her tongue laps at the underside and she starts to bob her head back and forth, sliding your "+Core.pc.penis()+" in and out of her mouth. Your hips start to move on their own until you’re gripping her hair tightly and fucking her throat, shoving your groin into her face with each thrust.", false);
					Core.text.gameOutput("\r\rYou feel your "+Core.pc.testes()+" tighten and thrust forward as far as you can, "+Core.pc.penis()+" painting Sasha’s throat with your hot cum. She groans in surprise, throat flexing and tightening around your "+Core.pc.penis()+" as she swallows your load. You take a step back, breathing hard as you recover and Sasha clears her throat. Despite already cumming once, your "+Core.pc.penis()+" is still eager for more. Sasha takes your hands and pulls you down so you’re on top of her, settling between her legs and "+Core.pc.penis()+" hovering close to her drooling pussy.", false);
					Core.text.gameOutput("r\rAwkwardly, the two of you try to get yourselves into a comfortable position, settling on having one of Sasha’s legs hooked around your waist. The swollen head of your "+Core.pc.penis+" rubs against her soaked cunny as she, impatiently, squirms and grinds her hips against it. After a few uncertain and poorly aimed thrusts, you finally get your "+Core.pc.penis()+" inside the warmth and tightness of her vagina. She is clenching so hard, you find it difficult to move and get the rest of your "+Core.pc.penis()+" into her.", false);
					Core.text.gameOutput("\r\rSasha yelps and arches her back off the ground as you play with her breasts again, gently kneading her nipples between thumb and forefinger. Her hips squirm and buck, pushing your "+Core.pc.penis()+" deeper into her. A deep grunt comes from your throat as Sasha cannot keep still. Holding back any longer is too much to bear and you release her swollen, teased nipples and grab her hips to keep her steady as you start to thrust into her. Her voice rises in pitch, both pleading for you to slow down and keep going. Luckily you’re out in the forest, because you’re fairly certain the whole village would hear you both, especially Sasha’s lewd and very vocal moaning.", false);
					Core.text.gameOutput("\r\rWith her cunny loosening up slightly, you find it much easier to move. You thrust your "+Core.pc.penis()+" harder into her, hardened "+Core.pc.penis()+" reaching as far into her as you can. Her legs squeeze tighter around your waist, nails digging into the back of your shoulders through your tunic as she clings to you. Your "+Core.pc.penis()+" thickens as those slick, wet walls encasing it ripple rhythmically each time you thrust into her and squeeze desperately tight as you pull back. Your "+Core.pc.testes()+" tighten up as you get closer and closer to the edge, hips wildly bucking against Sasha’s squirming. She digs her hand into your hair and forces your head down, capturing your mouth with hers and tongue violently wrangling with yours. Sasha’s cunny suddenly tigthens up, the hot, slick muscles flexing rapidly as her orgasm milks your "+Core.pc.penis()+" for everything it has. You manage a couple more thrusts before you feel the same rush, spilling your cum up against her womb, relieved moaning muffled against her mouth.", false);
					Core.text.gameOutput("\r\rSpent, you barely have enough strength to pull your cum-slicked "+Core.pc.penis()+" out of Sasha’s quivering love-hole before collapsing beside her, panting for breath. Sasha lets out a small laugh, humming pleasantly.", false);
					Core.text.gameOutput("\r\r“That was fun, "+Core.pc.name+". We should do it again.” Sasha suggested, stroking your sticky, half-erect "+Core.pc.penis()+". Despite the idea of another round sounds great, you feel much too tired and find yourself nodding off to enjoy a nap.", false);
					Core.buttons.button(1, "Next", 30);
				}
				if (Core.pc.vaginaArea > 0) {
					Core.text.gameOutput("\r\rUnable to hold back anymore, you pull both Sasha’s pants and panties off her legs, completely exposing her drooling cunt and swollen clit. You spread her legs to get a better look at her pussy, parting the wet lips to expose the her quivering, glossy pink hole. Embarrassed, Sasha protests and tries to close her legs but you use your body to block her efforts. Just to tease her further, you tease her swollen clit with your thumb as you slide a couple of fingers into her.", false);
					Core.text.gameOutput("\r\rSasha moans as you push your fingers in as deep as you can, her warm, wet walls constricting tightly around them. Her hips rise and twist desperately as you slide them in and out of her cunny slowly, thumb still on her exposed clitty. You lean down and grab one of her pert nipples between your teeth and tug on it, turning Sasha’s moans turning into high-pitched mewling sounds of pleasure and discomfort. You let her teat go, running your tongue over it to soothe the sting before switching to the other to do the exact same thing. Your curl your fingers as you pump your hand back and forth harder.", false);
					Core.text.gameOutput("\r\rYou don’t hear what Sasha mumbles and suddenly find yourself being tipped onto your side, twisting your hand at an uncomfortable angle and trapping it between her thighs. She, clumsily, unknots the tie of your pants and shoves her hand down under the hem and your damp panties. Your concentration breaks as her fingers, roughly, rub against your "+Core.pc.clit()+" and poking around your drooling "+Core.pc.vagina()+" until one of her digits manages to slip its way inside. Caught up in the heat of the moment, Sasha kisses you, shoving her tongue in your mouth and ravaging it wildly.", false);
					Core.text.gameOutput("\r\rSasha slides two more digits inside of you, stretching your "+Core.pc.vagina()+" a bit as she thrusts her hand hard and fast. Your moans mingle with hers as the two of you finger-fuck each other. Her legs lock around yours, pressing the two of you together, hips grinding and bodies rubbing together vigorously. You feel a sudden flood of liquid warmth over your hand as her cunny suddenly clamps down tightly, cumming hard. Your own orgasm rushes through you moments later, girl-cum squirting around Sasha’s fingers.", false);
					Core.text.gameOutput("\r\rSpent, the two of you pull your hands free and stretch out on the grass, skin still tingling from the aftershock. Sasha hums, too out of it to form words as she shimmies over and cuddles with you, one arm draped over your stomach. You give her forehead a kiss before finding yourself also drifting off to enjoy a nice nap", false);
					Core.buttons.button(1, "Next", 30);
				}
				trace(Core.pc.penisArea);
				trace(Core.pc.vaginaArea);
				Core.pc.isVirgin = false;
			}
			//Sex with Brian
			if (eventNum == 29) {
				Core.text.gameOutput("Though the two of you agreed to it, neither of you seem to be willing to make the first move. You just sit there in awkward silence. Brian looks incredibly nervous so, you swallow your own nerves and lean towards him to kiss him. At first, it’s just a shy touching of lips but the pleasant shiver that runs down your back inspires you to go further. Your tongue tangles with Brian’s as the two of you continue kissing, only breaking apart for short gulps of air, until Brian pushes you onto your back. Both of your are short of breath when Brian pulls back, hovering over you.", true)
				if (Core.pc.penisArea > 0) {
					Core.text.gameOutput("\r\r“So… um, how do we do this? I mean… one of us has to be on top.” He asks, eyes looking away from you.", false);
					Core.text.gameOutput("\r\rBrian brings up a valid point; one of you is going to have to be on the receiving end. Who gets to be the cherry picker?", false);
					Core.buttons.button(1, "Brian", 29.1);
					Core.buttons.button(2, "You", 29.2);
				}
				if (Core.pc.vaginaArea > 0) {
					Core.text.gameOutput("\r\rBrian lifts your shirt and gropes both of your "+Core.pc.breasts()+", teasing and pinching your "+Core.pc.nipples()+" between his fingers. You squirm helplessly as he continues to focus his attention on your "+Core.pc.breasts()+", sucking on one of your pert "+Core.pc.nipples()+" and running his tongue over it. The stimulation to your "+Core.pc.nipples()+" distracts you as Brian slips his hand under the hem of your pants and rubs your "+Core.pc.clit()+" through your damp undergarments. Your hips jump and grind against his hand eagerly as he keeps teasing you through the fabric.", false);
					Core.text.gameOutput("\r\rYou grab his pants, his cock already bulging against the fabric. Your fingers are shaking, making it difficult to undo the knot. In frustration, you growl at Brian to get his pants off. He complies, pulling his hand out of your pants and undoing his own. You hastily get your pants and panties off before pulling Brian back towards you. He settles between your hips, dick hovering close to your drooling "+Core.pc.vagina()+". After some tentative thrusts and rubbing, Brian gets the right angle and the swollen tip of his prick slides in, your "+Core.pc.vagina()+" clamping around it tightly as he slowly pushes more of his stiff member inside.", false);
					Core.text.gameOutput("\r\rBrian starts to, slowly, thrust his hips back and forth. Your "+Core.pc.vagina()+" squeezes and pulses as it gets used to the intrusion. Moments later, his thrusts start to get faster and harder, mumbling something about how tight your "+Core.pc.vagina()+" feels. He takes hold of your legs and lifts them up as well as your hips, changing the angle and enabling him to thrust his cock deeper into your "+Core.pc.vagina()+". Your moans get higher in pitch and your "+Core.pc.breasts()+" jiggle and bounce with each thrust. Brian bows over you, hot blasts of breath hitting your cheek as he pants and grunts each time he plows his dick into your quivering "+Core.pc.vagina()+". You can feel that knot of pleasure in your lower abdomen getting warmer and tighter.", false);
					Core.text.gameOutput("\r\rYour hips shake and buck, awkwardly trying to match pace with Brian’s movements as he pounds your "+Core.pc.vagina()+" as hard and as fast as he can now, both of you nearly at the finish. You twist your hips slightly and his next thrust slams into your "+Core.pc.vagina()+" and hits a sweet spot. You clench your legs around his hips and arch your back completely off the ground, cumming hard as your "+Core.pc.vagina()+" milks Brian’s dick for all of the semen he has as he shoots his load.", false);
					Core.text.gameOutput("\r\rOnce spent, Brian carefully pulls out of your quivering "+Core.pc.vagina()+" before collapsing besides you, the two of you panting for breath and covered in sweat. Though feeling satisfied, you are feeling quite tired. The two of you cuddle up shortly before you fall asleep to enjoy a nice nap.", false);
					Core.buttons.button(1, "Next", 30);
				}
				Core.pc.isVirgin = false;
			}
			//Get fucked by Brian
			if (eventNum == 29.1) {
				Core.text.gameOutput("You tell Brian you want him on top. Though looking a bit surprised, Brian agrees but asks you for a small favor, directing your attention to his partially erect dick. At first, you hesitate but there’s not backing out of it now and, to be honest, you’re kind of intrigued as you get down on your knees right in front of him and start stroking his cock. You hear his breathing got heavier, encouraging you to use your mouth. At first, you, just lick the shaft but, as your confidence grows, you move to taking the tip in your mouth and sucking on it.", true);
				Core.text.gameOutput("\r\rBrian thrusts his hips into your face gently, pushing the tip of his stiff dong towards the back of your mouth. You feel him gripping at your hair to steady himself, movement of his hips starting to get faster. Pretty soon, Brian is practically ramming his cock down your throat. Despite your best efforts to control your gag reflex, your throat constricts and quivers each time the salty, swollen head of his dick slides down. You take quick breaths through your nose each time he pulls back, tongue squirming helplessly as you try to keep up. Your efforts, though clumsy, seem to be doing the trick as Brian thrusts harder and mumbles a warning before shooting his load right down your throat.", false);
				Core.text.gameOutput("\r\rWhen he’s finished, Brian pulls his slick cock free, allowing you to inhale deeply and cough. Your throat still tingles a little from the cum you just swallowed but you’re not finished just yet. Before you have much time to recover, Brian is already moving you on all fours, spreading your cheeks to expose your "+Core.pc.buttHole()+". Though you try to relax and get comfortable, your body tenses up as soon as you feel the head of Brian’s prick pushing and rubbing against your "+Core.pc.buttHole()+" as he tries to get it in.", false);
				Core.text.gameOutput("\r\rAfter a few more attempts, your "+Core.pc.buttHole()+" suddenly gives without warning and Brian is able to slide his dick deep into your "+Core.pc.buttHole()+". It hurts at first, so he moves slowly. The slow friction is oddly soothing and the pain is soon replace by the tingling sensation of pleasure. Your "+Core.pc.penis()+" swells and twitches as Brian’s dick rubs against your prostate with each deep thrust your stretched "+Core.pc.buttHole()+" twitches and squeezes. As Brian pounds your back-side relentlessly, you grab your "+Core.pc.penis()+" with one hand while balancing your weight on other and start to masturbate rigorously, "+Core.pc.testes()+" tightening as you feel the tingle of release getting stronger and stronger in the base of your "+Core.pc.penis()+"", false);
				Core.text.gameOutput("\r\rBrian groans loudly as he slams his hips into your ass a few times, shooting his load of hot jizz deep into your "+Core.pc.buttHole()+". The sensation is too much for you to bear and you fire your own load, making a sizable puddle on the grass underneath you and rubbing the rest all over your "+Core.pc.penis()+" and hand as you finish squeezing out the last few drops. Finished, Brian carefully slides his deflating penis out of your quivering "+Core.pc.buttHole()+", allowing you to collapse on your side, arm finally giving out. You two move to a cleaner spot to lay down and relish in the afterglow. The pair of you lay close together but you find yourself immediately drifting off to enjoy a nap.", false);
				Core.buttons.button(1, "Next", 30);
			}
			//Fuck Brian
			if (eventNum == 29.2) {
				Core.text.gameOutput("You tell Brian you want him to go first. He seems quite surprised by the suggestion but agrees to the idea. The two of you take off your clothes, the two of you standing there and staring at each other. Brian has more muscle tone than you due to helping with his father’s work. Though you are excited and nervous with anticipation, your "+Core.pc.penis()+" seems slower to react, only sitting at half-mast.", true);
				Core.text.gameOutput("\r\rWordlessly and blushing, Brian gets down on his knees right in front of you. A surprised yelp escapes you as he suddenly but gently cups your "+Core.pc.testes()+" in his hand and fondles them. The stimulation makes your "+Core.pc.penis()+" a bit harder and your knees trembling slightly. You don’t even notice Brian has the tip of your "+Core.pc.penis()+" in his mouth until you feel his tongue lapping at the underside. You dig your fingers into his hair as he sucks and bobs his head back and forth, sliding your "+Core.pc.penis()+" down his throat.", false);
				Core.text.gameOutput("\r\rYour "+Core.pc.testes()+" start to tighten as you get close to releasing. You try to warn Brian to get him to stop but he’s so caught up in what he’s doing, he doesn’t hear you. He sucks harder on your "+Core.pc.penis()+", shoving it as far down his throat as he can manage. You can’t hold it back anymore and blow your load in his mouth as he pulls back. You can feel Brian’s groan vibrate around your "+Core.pc.penis()+" as he swallows your cum, lapping at the tip to clean you up before letting you go.", false);
				Core.text.gameOutput("\r\rDespite the load you just shot, your "+Core.pc.penis()+" is still twitching and hard. Brian still looks a bit embarrassed but having come this far, he doesn’t back out of it now. You swallow nervously as Brian gets on all fours, basically presenting his combat, toned ass towards you. You kneel down behind him, spreading his cheeks to get a better look at his puckered hole. It certainly doesn’t look big enough to accommodate your raging "+Core.pc.penis()+" but you’re past the point of really carrying. You line the swollen, sticky tip of your "+Core.pc.penis()+" against his tight ass-hole and try to push it but you keep slipping. After a few more attempts, you finally feel Brian’s back-door give and the tip of your "+Core.pc.penis()+" slide inside, the muscles immediately clenching tightly around your invading "+Core.pc.penis()+". He moans and squirms a bit despite his best efforts to remain still.", false);
				Core.text.gameOutput("\r\rAfter a few moments, you feel his tight hole loosen up enough to enable you to start moving. You, slowly, thrust your hips forward until your entire "+Core.pc.penis()+" is buried inside him. Brian grunts as his ass twitches and squeezes around your "+Core.pc.penis()+" as you start to pull back and thrust back in. The friction loosens him up even more and you start going faster, groin smacking into Brian’s ass quite loudly with each thrust. Still super sensitive from the blow job earlier, you already feel your "+Core.pc.testes()+" tightening up and "+Core.pc.penis()+" swelling up as you get closer to orgasm. You try to hold it back as long as possible but you, ultimately, fail and give a hard thrust, burying your "+Core.pc.penis()+" deep into Brian’s quivering hole as you shoot your load.", false);
				Core.text.gameOutput("\r\rOnce the stream stops, you find yourself spent. You pull your slicked, sticky "+Core.pc.penis()+" free, Brian barely able to keep himself up. You notice there’s a puddle of his own cum underneath him. You two move to a cleaner spot to lay down and relish in the afterglow. The pair of you lay close together but you find yourself immediately drifting off to enjoy a nap.", false);
				Core.buttons.button(1, "Next", 30);
			}
			//Dream time!
			if (eventNum == 30) {
				Core.text.gameOutput("You wake to find yourself on the same floating rock you had been on before. You’re in the void again, just like last night. You know this is a dream but something about it feels unsettling real. Like before, you don’t see anyone else and there’s nowhere to go. The other rocks are far from reach and you’re not confident that this dream realm will permit you to jump or move about as you please. However, something feels different; You feel like you’re being watched and yet you don’t see anyone here. You can’t seem to wake yourself up from this so you are stuck for the time being. Time seems endless here and you’re not sure how long you’ve been asleep now.", true);
				Core.text.gameOutput("\r\r“It’s been years since anyone’s wandered in here.” A voice speaks from right behind you.", false);
				Core.text.gameOutput("\r\rYou spin to find yourself facing a person… or creature… no, a combination of both. She stands about an inch shorter than you and has one of the most unusual appearances you’ve ever seen. Her skin is purplish-grey and a combination of soft flesh and patches of reptilian scales, some darkened to form patterns on her throat and arms. She has bright green eyes that seem to have a faint glow to them, face framed with black hair streaked with purple bangs. Her more notable features are the black antlers with glowing green tips that crown the top of her head, the long tail with glowing green hair on the tip, and her digi-jointed, hooved legs covered in black hair. She is scantily clad in a two piece bikini made of animal hide and leather. The belt on her waist is decorated with all kinds of pouches.", false);
				Core.text.gameOutput("\r\r“Who… are you?” You ask, staring at her.", false);
				Core.text.gameOutput("\r\r“That’s not important right now. You look pretty… ordinary but I’m sure that’ll change in time. How did you get here?” She answered, though it didn’t really answer your question at all.", false);
				Core.text.gameOutput("\r\r“I fell asleep. What is this place?” You tell her, looking around again.", false);
				Core.text.gameOutput("\r\r“Nowhere. We never gave it a proper name. I would ask how you managed to get here but I already know… however, you shouldn’t be here, "+Core.pc.name+". This place is dangerous, for you at least.” She goes on, brow furrowing.", false);
				Core.text.gameOutput("\r\r“Uh, ok but… how do I get out? I mean, I don’t even fully understand how I got in…” You start, not realizing she’s taken a few steps closer to you...", false);
				Core.text.gameOutput("\r\rThe strange creature gives you a firm shove backwards, sending you off balance and staggering back. Before you can stop yourself, you pitch over the edge of the rock, staring at her in disbelief and being sent into free-fall, just like before… which of course results in you waking up on your back, staring up at the canopy of trees above your head. The shadows of the forest have grown longer, indicating that you have been asleep for several hours at most. Hurriedly, you grab your fishing pole and hurry back home at a jog, knowing you’re going to be in a lot of trouble.", false);
				Core.buttons.button(1, "Next", 31);
			}
			//Attack on Player's Home
			if (eventNum == 31) {
				Core.text.gameOutput("You reach your home and are greeted by a grisly scene. The barn has been gutted by the flames consuming it and all of your family’s livestock lays slaughtered all about the property. Your house, luckily, appears to be untouched but your hopes are immediately dashed when you see the corpses of your father and brother lying by the front door, face down in the blood-churned dirt. Your stomach does a flip and it takes every ounce of will not to throw up all over yourself. Concerned about your mother and sisters, you head inside to look for them.", true);
				Core.buttons.button(1, "Next", 32);
			}
			//Search ransacked house
			if (eventNum == 32) {
				Core.text.gameOutput("The den is completely ransacked and trashed. All of the furniture has been smashed and hacked to bits as well as most of your family’s meager possessions. Anything that may have been worth some value has been taken by whoever attacked, but you see no trace of anyone still in the house.", true);
				Core.text.gameOutput("\r\rYou notice a trail of blood-stained foot-prints leading to and from the kitchen but there’s nothing coming from that direction… which has you incredibly worried.", false);
				Core.text.gameOutput("\r\rThe stairs lead up to your family’s sleeping quarters. You swear you can hear the floorboards above your head creaking, as if someone was up in one of the bedrooms.", false);
				Core.buttons.button(1, "Kitchen", 33);
				Core.buttons.button(2, "Upstairs", 36);
			}
			//Investigate the Kitchen
			if (eventNum == 33) {
				Core.text.gameOutput("You follow the bloody footprints into the kitchen and are met with a grisly scene. The floor, broken cabinets, and counters are smeared with blood. You can see footprints everywhere, like several people have been in and out of here recently. To your horror, you find your mother’s bloodied corpse slumped by the stove, her favored butcher’s knife clutched tightly in her hands. Her clothes have been ripped off and she looks pretty beaten up… but there’s no chance of saving her when you realize that her throats been slit. Whoever did this was very methodical… and they might come back. It’s best not to linger too long.", true);
				if (Core.container.motherContainer.Amulet) {
					Core.text.gameOutput("\r\rYou notice that your mother still has the family heirloom pendant around her neck. It’s been in your family for generations. You think about taking it, but you hesitate, unwilling to touch your mother’s corpse. What will you do?", false);
					Core.buttons.button(1, "Take", 34);
				}
				Core.buttons.button(2, "Leave", 35);
			}
			//Take the amulet from Player's dead mom
			if (eventNum == 34) {
				Core.text.gameOutput("You take a deep breath, carefully kneeling next to her and untying the soaked amulet from around her throat. Her body is still warm but you try not to think about how long she’s actually been dead or what was done to her before hand. You wipe the amulet off on the edge of your tunic. The pendant itself is simply a piece of hammered iron with a sheaf of wheat and a sickle stamped on it. Your parents would tell you stories of how it brought luck to your family during times of tragedy and great need. Perhaps it will bring you the same luck. For now, you pocket it and back away from your mother, returning to the smashed den.", true);
				Core.container.motherContainer.Amulet = false;
				Core.pc.loot(Core.item.familyAmulet);
				Core.buttons.button(1, "Next", 32);
			}
			//Leave the Kitchen
			if (eventNum == 35) {
				Core.text.gameOutput("With nothing left in here, you mumble apology under your breath and quickly leave the kitchen, returning to the smashed den.", true);
				Core.buttons.button(1, "Next", 32);
			}
			//Go Upstairs
			if (eventNum == 36) {
				Core.text.gameOutput("You head upstairs as quietly as possible, hoping not to alert whoever is lurking around in one of the bedrooms… which seems like a really bad idea in the first place, considering that you’re not armed and the mysterious lurker could be. You first check the twins’ room but find it empty. You quietly walk across the hall to check your parents’ bedroom but its empty as well. You start to relax a little and head back out into the hall.", true);
				Core.text.gameOutput("\r\rYou catch movement headed into your bedroom and, for an instant, you could swear you recognized who it was but don’t want to call out the name… just in case it’s an attacker looking for any loot. You, carefully, sneak to the door of your room and press your back up against the wall. You don’t hear any movement in the room but that isn’t what grabs your attention.", false);
				Core.text.gameOutput("\r\rThe shatter of glass from downstairs is immediately followed by the heavy smell of smoke. You rush to the stairs, only to be greeted by a sea of flames that is, quickly, claiming the ground floor of the house. You start to cough as the smoke gets thicker and the air starts to get warmer and warmer. You run back to your room, covering your mouth to block out the smoke. Luckily, the window is still unlocked and you slip through it out onto the roof covering the porch.", false);
				Core.buttons.button(1, "Next", 37);
			}
			//Escape!
			if (eventNum == 37) {
				Core.text.gameOutput("As soon as your feet touch the ground, you hear shouting and look up to see a small group of soldiers like the ones that had been in town before. The soldier on horseback has a more ornate helm than the rest as he points at you and shouts orders. You’re not armed and you’re not wearing anything to protect you. It’s more advisable that you run but you could stand your ground… at least your death might be quick.", true);
				Core.buttons.button(1, "Run!", 38);
				Core.buttons.button(2, "Stand", 39);
			}
			//Run... because it's the smart thing to do
			if (eventNum == 38) {
				Core.text.gameOutput("There’s no way you can fight one of these guys. A whole group will butcher you so you make the wise decision and run for the forest. You can hear the hoofbeats of the Commander’s horse following but you know the game trails and paths of Tyr Forest and easily lose them.", true);
				Core.buttons.button(1, "Next", 40);
			}
			//Stand your ground like an idiot
			if (eventNum == 39) {
				Core.text.gameOutput("You really are stupid… or looking to end the game early. You’re not armed so these soldiers are going to kill you with very little effort. It’s too late to run now but all of a sudden, the soldiers scramble to a halt. Some drop their weapons as they stumble over each other and the Commander’s horse screams and rears, front legs kicking madly at the air.", true);
				Core.text.gameOutput("\r\rAt first, you think you’ve managed to intimidate them but then you feel a blast of hot air blow over you from the back before you realize something very large is breathing quite heavily behind you. You, slowly, turn to look over your shoulder, finding yourself face to face with a beast several times larger than a horse. A massive pair of antlers sit atop its wolf-shaped head, it’s body covered in a combination of black fur and scales. Three pairs of glowing green eyes stare at… no, past you before the beast roars, revealing a maw filled with sharp fangs. The beast leaps over you to attack the soldiers, killing several and sending the rest fleeing as it gives chase. Don’t look a gift deus ex machina in the face, run!", false);
				Core.buttons.button(1, "Next", 40);
			}
			if (eventNum == 40) {
				Core.text.gameOutput("You run for the one safe place you can think of; the ancient oak tree by the creek. You do your best to mask your trail and keep the soldiers confused, reaching the creek. The forest is uncomfortably quiet… there’s not even any comfort in the sound of flowing water. You lean your back against the oak tree’s trunk, panting for breath. You listen for any sounds of pursuit but you are completely alone. In these moments, you have time to finally process what has happened. Your family, dead… no, you don’t recall seeing any trace of your twin sisters. Maybe they escaped… you hope they escaped. You wonder where those soldiers had come from. The group that had been hanging around earlier in the day, no way they did this themselves. More must have arrived while you were in the forest.", true);
				Core.text.gameOutput("\r\rYour thoughts are immediately interrupted by a chill breeze suddenly blowing through. You wrap your arms around yourself immediately and shiver, despite being warm a few moments before. Something is very… oppressive about the atmosphere now and the hairs on the back of your neck are standing on end. Then… you hear it; the distinct crunching of leaves and twigs, something being dragged along the ground. Someone is coming and you need to hide. The oak tree is your only option, either under its roots or up in its thick canopy.", false);
				Core.buttons.button(1, "Roots", 41);
				Core.buttons.button(2, "Canopy", 42);
			}
			//Hide under the tree's roots
			if (eventNum == 41) {
				Core.text.gameOutput("Beneath the thick, gnarled roots of the white oak tree is a small hovel you and your siblings dug when you were kids. Though it’s been years since you’ve last used it, you still remember where the conceal entrance is. Squeezing down inside takes a bit of effort but you manage to fit without hurting yourself and getting into a comfortable position.", true);
				Core.text.gameOutput("\r\rThe footsteps get, steadily, louder along with the dragging sound. Whatever is coming is pulling something behind it. You do your best to steady your breathing but your heart is pounding hard and loud in your chest. You, slowly, shift your cramped position so you can peer out from under the roots in hopes of getting a look at whatever is passing by.", false);
				Core.text.gameOutput("\r\rA man comes into view… at least you think it’s a man. He is quite tall and his face seems misshapen but you squint and realize that his head is encased in intricately sculpted iron mask made to look like a snarling wolf. From the shoulders down to his waist, his body is completely bare, patterned scars decorating every inch of skin. The only clothing he seems to be wearing is a heavy leather smock that covers his legs. A heavy, rusted-looking blade rests on one shoulder as he looks around, searching.", false);
				Core.text.gameOutput("\r\rYou hold your breath, hoping you’re not the one the masked man is looking for, body trembling in fear. The shaking gets worse when that mask turns in your direction and tilts down. You can’t see any eyes but you get the feeling he knows exactly where you are.", false);
				mainStory(43);
			}
			//Hide up in the tree's canopy
			if (eventNum == 42) {
				Core.text.gameOutput("The white oak tree is so old, it’s branches and canopy are quite dense, making it a good hiding spot. You scramble up the trunk and branches and find yourself a good hiding spot that conceals you but allows you to see anything that passes by the area.", true);
				Core.text.gameOutput("\r\rThe footsteps get, steadily, louder along with the dragging sound. Whatever is coming is pulling something behind it. You do your best to steady your breathing and try to stay as still as possible. The steps suddenly stop and the forest falls silent again. Growing curious, you carefully move to try and get a look at what or whom has arrived.", false);
				Core.text.gameOutput("\r\rA man stands below you… at least you think it’s a man. He is quite tall and his head is completely encased in an intricately sculpted iron mask, made to look like a snarling wolf. You can see he appears to be bare form the waist up, with his flesh decorated with patterned scars. The only clothing the man seems to have is a heavy, stained leather smock that covers his lower body. A heavy, rusted-looking blade rests on one shoulder as he looks around, searching.", false);
				Core.text.gameOutput("\r\rYou hold your breath, hoping you’re not the one the masked man is looking for, body shaking in fear. The shakes get worse when that sculpted mask slowly tilts up as he turns in your direction. You don’t see any eye sockets but you get the feeling he’s staring right at you.", false);
				mainStory(43);
			}
			if (eventNum == 43) {
				Core.text.gameOutput("\r\rA breeze suddenly rattles the tree and the man looks away, distracted. After a few tense minutes, then drops his arm, blade making a heavy, dull ‘thud’ as it hits the dirt. You watch as the man lumbers off, back into the depths of the forest. You didn’t hear any voices but something warded him off and for that, you are grateful. You wait until you can no longer hear the dragging of his sword or his heavy footfalls before you can finally relax. Exhausted by the ordeal of the day, you end up fainting. ", false);
				Core.buttons.button(1, "Next", 44);
			}
			//Aftermath
			if (eventNum == 44) {
				Core.text.gameOutput("You wake to the dawn of the next day, sore from the uncomfortable position you were sleeping in. At some point, you must have woken up and come out of your hiding place and slept under some bushes near the tree. There’s a somber feeling to the atmosphere of the forest. You feel no relaxation or comfort here. The images of what happened before are still fresh in your mind but that feel completely surreal… like a nightmare. Hoping for the best and dreading the worst, you make your way back to Tyr.", true);
				Core.text.gameOutput("\r\rUpon your arrival, you find your home has been completely burned to the ground, along with the barn. You don’t see any trace of your father or brother’s corpses but you don’t bother looking too hard. The reality of the situation falls heavily on your shoulders as you head towards the village to assess the damage done there. Also… you have a bag on your back to carry stuff because you need one and the author forgot to include one earlier in the story.", false);
				Core.buttons.button(1, "Next", 45);
			}
			//Enter the Ruins of Tyr
			if (eventNum == 45) {
				Core.flags.loc_tyrRuins = true;
				TyrRuins.tyrRuins(5000);
			}
			//On the road to Vespyr... combat tutorial
			if (eventNum == 46) {
				Core.flags.loc_tyrRuins = false;
				Core.text.gameOutput("Though you can’t see the city walls yet, you know you’re about an hour out from Vespyr. Your legs hurt a bit from walking so far and for so long, so a break sounds like a good idea. Luckily, there’s a nice shady tree near the road you can sit under and relax for a little bit. You leave your pack close by and sit down, legs stretched out in front of you. The warmth of the day is a comforting contrast to the desolate scene you left behind you. Feeling relaxed, your eyes drift closed, sending you into a light nap.", true);
				Core.text.gameOutput("\r\rThe nap does not last long, for you are awakened by the sound of something rummaging in your bag and… squeaks? Thinking something is just looking for food in your bag, you open your eyes but move slowly as not to startle it. Sure enough, there is something rummaging through your pack and it, appears, to be a large rat of some sort. You immediately snatch your bag, fearing it has already gotten into what little food stores you possess. However, what tumbles out, shrieking in alarm, is not quite a rat.", false);
				Core.text.gameOutput("\r\rYou’ve heard of Mus before, little creatures native to the Green Sea that resemble large field mice. This one in particular is rather thin looking and brown fur ragged, gender indiscernible. It draws a small knife… a shiv really, from the little sheath belted around its waist. The thief’s large, black eyes are focused on your bag and he seems intent on robbing you, chattering at you in a series of animal noises you can’t decipher. Though you are much larger than the Mus, that shiv could still seriously harm you if you’re hit in the wrong spot. Left with no choice, you put your fists up in an effort to defend yourself. ", false);
				Core.buttons.button(1, "Fight!", 47);
			}
			//Start tutorial fight
			if (eventNum == 47) {
				Core.combat.startFight("Tutorial");
				
			}
			//Continue Story
			if (eventNum == 48) {
				Core.text.gameOutput("With the Mus gone, you are free to continue on your way to Vespyr. The trip takes the rest of the day, but you make it to the gate before they close it for the night. The guard inspects your bag before letting you inside. Vespyr is a large town but with the sky darkening, most people are heading home and closing up shop for the evening. Tired, you head for the inn after getting directions from a passing guard. When you arrive at the Farmer’s Daughter, the only inn in Vespyr, you find it to be bustling with activity. It seems a lot of the townspeople are here to celebrate the end of a day of hard and honest work. You manage to find a table in the back of the dining hall, partially concealed in the shadows of the lantern light. Grateful for the rest and comforting atmosphere of the tavern, you get comfortable as you think about what you’re going to do next.", true);
				Core.text.gameOutput("\r\rYou fall so deep in thought, you don’t even realize that someone is standing across the table from you until it moves, startling you to attention. You look up to see a man… at least you think it’s a man. He appears human enough but the twin pair of horns jutting out from his skull, the leathery wings on his back, and his bare chest has patches of reptilian scales on his throat and forearms.", false);
				Core.text.gameOutput("\r\r“I apologize for disturbing you but this was the only table that appeared to be available. Would you mind if I sat here?” He asks in a surprisingly gentle voice.", false);
				Core.text.gameOutput("\r\r“Uh, sure I guess.” You reply, shifting yourself into a more comfortable position.", false);
				Core.text.gameOutput("\r\rThe man sits down and waves over a serving wench, placing an order for a meal. The smell of food reminds you that you haven’t eaten for several hours but you’re low on funds right now and finding a place to sleep is more important than food. You glance at the man across from you and you catch him smirk at you. Something about him feels… off, but you can’t place why. He doesn’t seem dangerous but you keep your guard up regardless.", false);
				Core.buttons.button(1, "Next", 49);
			}
			if (eventNum == 49) {
				Core.text.gameOutput("Awhile later, two serving wenches come to the table; one carrying a tray laden with food and the other with large clay mugs. Surprisingly, one is placed in front of you, along with a plate and dining utensils. The tray of food is set between you and the reptilian man. The amount of food is more than any one person can eat and it makes you a bit jealous to see all that food in front of you, just out of reach…", true);
				Core.text.gameOutput("\r\r“Please, help yourself. You look like you could use a good meal.” The reptilian man offers out of the blue, already putting portions of meat, bread, and vegetables on his plate.", false);
				Core.text.gameOutput("\r\rHe keeps urging you to eat until you finally cave in, surprised by his generosity. The mug set before you is also filled with a chilled, refreshing fruit juice. You eat your fill, the meal passing in relative quiet. The two of you don’t talk but you notice the man finishes what is left on the tray; every bone picked clean, every crumb gone. The rich food has left you feeling extremely exhausted. The thought of getting a room for the night comes to mind but you feel so tired that you decide to just wait until you’ve digested a bit… which results in you falling asleep at the table.", false);
				Core.buttons.button(1, "Next", 50);
			}
			//Dream-time again!
			if (eventNum == 50) {
				Core.text.gameOutput("You’re lying on the ground… your body feels so weak that you can barely feel anything from the neck down and there’s an odd hollow feeling in your chest. Your vision is faded and blurred, only able to make out dark, blurry shapes. There’s some kind of warm, sticky liquid underneath you but you can’t tell what it is. You can hear voices… someone talking nearby by they sound so far off, you can’t make out the words. You try to turn your head to see where the voice is coming from but you can’t move at all.", true);
				Core.text.gameOutput("\r\rYour field of vision is suddenly filled with the shape of someone… familiar but not. You can’t really make out their face, it’s all blurred but you can hear them quite clearly.", false);
				Core.text.gameOutput("\r\r“You played your role perfectly. Your sacrifice will be honored… what’s going on out there?!”", false);
				Core.text.gameOutput("\r\rThere must be some kind of commotion because you hear a dull crash from somewhere behind you and there’s suddenly screams and sounds of battle faintly ringing in your ears before you pass out.", false);
				Core.buttons.button(1, "Wake Up", 51);
			}
			//Meet Elra Silversong and Hyperius
			if (eventNum == 51) {
				Core.text.gameOutput("You wake up to find yourself tucked into bed. At first, you think you’re back home and a moment of elation fills you but as soon as your vision focuses and you get a good look around, you realize this looks nothing like your old room.", true);
				Core.text.gameOutput("\r\r“About time you woke up.” A stern, feminine voice called from across the room.", false);
				Core.text.gameOutput("\r\rThere is a woman with long, pointed ears and visibly armed with swords, bow, and quiver full of arrows, leaning against one of the bedposts at the foot of the bed. You don’t recognize her but seeing at well armed she is, running from her would probably not go in your favor. Still, you don’t remember how you got here after passing out at the table with that strange man… oh dear. You immediately lift the covers to check on your clothes and find you fully dressed and, seemingly, untouched. The woman, who you figure is an elf, laughs rather snidely.", false);
				Core.text.gameOutput("\r\r“Calm down. My companion did nothing to you aside from being overly generous. Get yourself cleaned up and come downstairs.” She said curtly, already heading for the door.", false);
				Core.text.gameOutput("\r\rShe slams it behind her before you get the chance to. Being that your day is off to a really strange start, you decide to get out of bed and clean up. You could use some freshening up anyway after that long walk you made yesterday. Your feet are still a little sore but your chief concern is getting yourself some breakfast and working out what you’re going to do from now on… since you don’t have a home or family anymore, in case you forgot.", false);
				Core.buttons.button(1, "Next", 52);
			}
			if (eventNum == 52) {
				Core.text.gameOutput("Once you’ve readied yourself, you head downstairs to find both the elven woman and the scaled man from last night sitting at a table in the middle of the near-empty tavern. Breakfast is already sitting out on the table and a plate and mug has been laid out by an empty seat… probably for you. The scaled man gets up and smiles at you warmly, seemingly pleased to see you again though you’re not sure if you’re happy to see him despite the free meal he gave you last night.", true);
				Core.text.gameOutput("\r\r“Good morning. I hope you rested well?” He greets, taking his seat and gesturing for you to join them, though the elven woman looks moderately annoyed.", false);
				Core.text.gameOutput("\r\r“Thanks but I should get going.” You tell him, still feeling uncertain about the pair’s intentions with interacting with you.", false);
				Core.text.gameOutput("\r\r“I see. Well, before you go on your way, I do have a question… have you seen an hosts of soldiers in black armor, likely carrying a red banner with the sigil of a crowned wolf?” He asks, his expression turning a somber.", false);
				Core.text.gameOutput("\r\rThe mention of the armor and banner gives you a brief instant of flashbacks to the attack on Tyr, especially the men that had chased you into the forest and that daunting wolf-helmed man who nearly found you. You’re not sure if you should answer him, considering if he’s involved in some manner… you could be in serious danger. Do you tell him the truth or try to lie your way out of this?", false);
				Core.buttons.button(1, "Truth", 53);
				Core.buttons.button(2, "Lie", 54);
			}
			//Tell Hyperius the truth
			if (eventNum == 53) {
				Core.text.gameOutput("You decide it’s better if you just tell him the truth. Maybe he’s someone who knows what’s going on or he could be working for them. You get the feeling he already suspects something about your knowledge of them so why bother hiding it? You tell him where you’re from and what happened yesterday.", true);
				Core.pc.noble += 5;
				mainStory(55);
			}
			//Try to lie to Hyperius
			if (eventNum == 54) {
				Core.text.gameOutput("You decide to not be involved and tell him you never saw the soldiers. However, when you go to open your mouth, the words you intended do not come out. Instead, you end up telling him about the attack on Tyr Village yesterday.", true)
				Core.text.gameOutput("\r\r“No, no, you are going to tell the truth.” A familiar, feminine voice whispers in your ear, even though no one is there.", false);
				Core.pc.self += 5;
				mainStory(55);
			}
			if (eventNum == 55) {
				Core.text.gameOutput("\r\rBoth the elven woman and the scaled man seem quite surprised by not only the tale of your attack, but the fact you managed to escape. The man seems especially interested in the man with the wolf-helm but he doesn’t give you any real information in return. You decide to sit down, since you’ve taken this course of action willing or otherwise, and help yourself to some breakfast.", false);
				Core.text.gameOutput("\r\r“You were lucky to escape, especially from the Executioner.” The elven woman comments, sounding a bit impressed as she pours herself something to drink.", false);
				Core.text.gameOutput("\r\r“The Executioner?” You ask with a mouthful of eggs and toast.", false);
				Core.text.gameOutput("\r\r“A ruthless hunter and slave to Zymar. I’m guessing this area doesn’t get much word on the current happenings of Alwyn, does it?” The scaled man asks.", false);
				Core.buttons.button(1, "Next", 56);
			}
			if (eventNum == 56) {
				Core.text.gameOutput("You tell him you don’t hear much from the merchants aside from complaints about taxes and such. He goes on to explain that King Eddard was slain during a coup lead by his advisor and now the kingdom of Alwyn is run by the advisor, known only as Zymar. Since, the army has been attacking many small settlements like Tyr but no one knows why… at least, you don’t know until the elven woman chimes in. Apparently, she was getting a bit annoyed with scaly man taking too long or something.", true);
				Core.text.gameOutput("\r\r“Zymar is after a person called the Caeles; a mythological being that has the powers of the Gods… supposedly. That’s why we’re out here too, as well as tracking the movements of the army. We work for the Resistance, founded by King Eddard’s son, Prince Leo.” She says hasily, rolling her eyes.", false);
				Core.text.gameOutput("\r\r“I was getting to that part, Elra.” The man says, slipping her name.", false);
				Core.text.gameOutput("\r\r“You were taking too damn long. I wanted to be on the road back to Elsyr by dawn but no, you wanted to wait around for this… human. Didn’t need you giving "+Core.pc.pronoun1()+" the entire novelization.” She complains.", false);
				Core.text.gameOutput("\r\r“Patience has never been a strong suit for you, elf. Alright, I was just trying to be nice to our friend here. I take it you came to Vespyr to try and start over? You have any family here?” He asks, giving Elra a sour look.", false);
				Core.buttons.button(1, "Next", 57);
			}
			if (eventNum == 57) {
				Core.text.gameOutput("Sadly, you admit you don’t know anyone here and you don’t have much to your name aside from what’s in your pack and the clothes on your back. The scaled man thinks something over for a moment then says something in a completely different language, directed at Elra. She replies back in the same language, though in a more irritated tone of voice. They back and forth for a few minutes, with Elra just getting up and leaving in an angry huff. The man laughs before turning his attention back to you.", true);
				Core.text.gameOutput("\r\r“Don’t worry about her. She’s always had a thorn in her back-side. I never properly introduced us. My name is Hyperius and that is Elra Silversong. I’d like to offer an invitation of help… a chance to start over I suppose. We are headed back to Elsyr and can escort you there. You won’t need money or anything of the like. It’s a safe place and plenty of opportunity to make a new home.” He explains to you, giving you small, reassuring smile.", false);
				Core.text.gameOutput("\r\rElsyr… homeland of the elves and hidden somewhere in the large forest to the north known as the Elsyr Woodlands. You’ve heard stories of the place but it’s a very long trip across the dangerous expanse of the Green Sea and you are not much of a fighter. However, if these two are willing to protect you… maybe even teach you, maybe then it won’t be so bad. Plus, there’s no telling if those soldiers will start attacking larger towns in the near future. Vespyr might not be all that safe. However, you have a decision to make and Hyperius is, patiently, waiting on your reply.", false);
				Core.buttons.button(1, "Go With", 58);
				Core.buttons.button(2, "Stay", 59);
			}
			//Go with Hyperius and Elra to Vespyr
			if (eventNum == 58) {
				Core.text.gameOutput("Hyperius’s offer strikes a chord with you; a chance to start over in a strange, new land. Putting all of this behind you and finding safe harbor… what’s not to like about that. Though you’re not much of an adventurer, you feel like Hyperius honestly means what he said about giving you a helping hand on the journey there. He seems pleased when you accept his terms.", true);
				Core.text.gameOutput("\r\r“Sounds like you’re sure about this, so I won’t push you. However, you’re going to need to be properly prepared for journey. I would recommend getting a weapon and new set of clothes. Health potions won’t be a bad idea either.” Hyperius comments getting up from the table, chair scraping against the stone floor.", false);
				Core.text.gameOutput("\r\r“But… I don’t have any mo-?!” You start, trying to warn him you are broke but he tosses a hefty pouch of coins onto the table, smiling.", false);
				Core.text.gameOutput("\r\r“That should be enough sigils to get you the supplies you’ll need. The remainder, you are free to do with as you please. Vespyr is well known for it’s… discreet house of entertainment. When you are ready to go, meet me at the North Gate.” He continues, tipping his head before turning and leaving the tavern.", false);
				Core.text.gameOutput("\r\rYou scoop up the pouch, feeling its weight before checking inside. Sure enough, there are more sigils in there than you have ever seen. With money in hand and the promise of adventure and a new home ahead of you, you leave the tavern to get a proper look around Vespyr and prepare yourself.", false);
				Core.pc.sigils += 100;
				Core.buttons.button(1, "Next", 60);
			}
			//Stay in Vespyr... because that's an option for some reason
			if (eventNum == 59) {
				Core.text.gameOutput("Though you find his offer tempting, you decide to take your chances here in Vespyr instead of trying the dangers of the long journey through the Green Sea. Hyperius accepts your response without question. He gets up and offers that you finish whatever you can of the food before taking his leave. You get the feeling you will not cross paths with him and Elra again at all… and you’re ok with that.", true);
				Core.text.gameOutput("\r\rAfter eating your fill, you go about finding yourself a job. After spending the day searching, you finally manage to convince the town blacksmith to apprentice you. He agrees to let you take up residence in a small guest room he has above the shop. From then on, you spend your days working and acclimating to small town life.", false);
				Core.text.gameOutput("\r\rYears pass uneventfully. You grow into a health, strapping individual, probably get married and have lots of kids. Eventually, you end up taking over the blacksmith shop and making quite a good living for yourself, despite the continued conflict between the Resistance and Zymar’s Black Army but Vespyr remains neutral ground and fairly untouched. There’s the occasional company of black-armored soldiers that pass through but you’ve learned not get involved. Life turns out pretty good for you actually.", false);
				Core.text.gameOutput("\r\rActually, I’m just fucking with you. Make the right choice next time and stop trying to fuck up the story.", false);
				Core.buttons.button(1, "Wake Up", 51);
			}
			//Navigate Vespyr
			if (eventNum == 60) {
				Vespyr.vespyr(5050);
			}
		}
		

	}
	
}
