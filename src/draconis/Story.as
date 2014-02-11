package draconis {
	
	import draconis.*;
	import draconis.locations.city.*;
	
	public class Story {
		public static var motherContainer:Object = { Amulet:true };

		public function Story() {
			// constructor code
		}
		public static function mainStory(eventNum:Number) {
			Core.flags.activeGame = true;
			Core.screens.game.refreshScreen();
			Core.buttons.flushBtns();
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
					Core.text.gameOutput("“"+Player.name+"! Get the hell up, you lazy bum!” A familiar, masculine voice calls.", true);
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
				Player.aggro += 1;
				if (Core.flags.switch_DevMode) Core.text.gameOutput("\r\r<i>Aggression +1</i>", false);
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
				Player.isMale();
				mainStory(08);
			}
			//You are a chick
			if (eventNum == 07) {
				Core.screens.game.pcPane.visible = true;
				Core.text.gameOutput("You run a hand over your ear to tuck back a loose bang of long, brown hair, admiring your feminine face. It’s kind of uncanny how much you are starting to look like your mother. Your hair is a complete mess and there’s still flecks of sleep crusted in the long eyelashes around your brown eyes. You, hurriedly, wash your face and run a brush through your hair to get it under control before heading downstairs.", true);
				Player.isFemale();
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
				Core.text.gameOutput("\r\r“"+Player.name+"! So good to see you. Is that the bread from your mom I asked for?” He greets, giving you a big hug before you hand him the bundle of bread loaves.", false);
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
					Core.text.gameOutput("\r\r“I… sorry "+Player.name+", but I have too much work to do right now.” You barely hear him say before he goes back to work.", false);
					Core.text.gameOutput("\r\rSince trying to engage him in further conversation seems futile right now, you leave him to his work. Maybe he’ll want to talk later. You hope you haven’t hurt his feelings or anything with what you had told him earlier.", false);
					Core.buttons.button(1, "Leave", 10);
				}
				else {
					Core.text.gameOutput("You decide to visit Argo at his blacksmith shop. You’ve known the grizzled minotaur since you were little. He is one of the few Aphrosia natives that lives in Tyr. He has his back to you, still hammering a glowing piece of metal on his anvil. You, patiently, wait until he straightens up and drops the piece of metal into a barrel of water to cool it. The water steams and sizzles loudly as the metal rapidly cools. As he pulls it out to admire his work, Argo catches sight of you from the corner of his eyes. He smiles as he fully turns to face you, setting aside hammer and rod and wiping his big three-fingered hands on his stained smock.", true);
					Core.text.gameOutput("\r\rArgo is one of the tallest people in Tyr, standing at around seven feet tall. His broad chest and beefy arms seem to be precariously balanced on a slender abdomen and hips, but his thick, hooved legs and tail help keep him balanced. His black fur and mane of hair is starting to pepper with hairs of grey and white, giving him a grizzled appearance. His horns are carefully cut short and blunted to keep from accidentally hurting someone. A thick, hammered iron ring hangs from his wide nostrils on his short, bovine muzzle. His gentle, brown eyes always hold a glimmer of mirth and wisdom that makes you smile whenever you see him.", false);
					Core.text.gameOutput("\r\r“"+Player.name+"! This is a pleasant surprise. What trouble did you decide to cause today?” He greets in a deep, soothing voice, giving your hair a friendly tossle.", false);
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
				Core.text.gameOutput("\r\r“Maybe… the realm has been unsettled as of late but Tyr is so remote, it’s probably not much to be concerned about. Still, don’t go messing around them " + Player.name+"; . They don’t look all that friendly.” The minotaur answers you, something in his tone of voice betraying a more serious suspicion.", false);
				Core.text.gameOutput("\r\rThe conversation tapers off shortly after and Argo tells you he has to get back to work. You give the big minotaur a hug before heading off on your way.", false);
				Core.buttons.button(1, "Next", 10);				
			}
			//Flirt with Argo
			if (eventNum == 13) {
				Core.text.gameOutput("You smirk a little and rest a hand on Argo’s side, digging your fingers into his coarse black fur. He looks down at your arm before angling his head to give you a quizzical look. You swallow your nerves and tighten your grip a bit to give yourself some leverage.", true);
				Core.text.gameOutput("\r\r“You know, the silver in your fur gives a very distinguished look.” You say in a joking manner.", false);
				Core.text.gameOutput("\r\r“Are you trying to make fun of me, "+Player.name+"?” He asks, a small smile tugging at his bovine muzzle.", false);
				Core.buttons.button(1, "Be Direct", 14);
				Core.buttons.button(2, "Subtle", 15);				
			}
			//Tell Argo outright you are attracted to him
			if (eventNum == 14) {
				Core.text.gameOutput("You decide there’s no point in skirting around the subject. With your luck, it would all go over the minotaur’s thick skull. The best course of action is to be completely direct with him. You tell him exactly what’s on your mind, laying a hand on him as you tell him that you are quite interested in him… in more ways than one.", true);
				Player.aggro += 1;
				mainStory(16);
			}
			//Skirt around the subject that you find Argo attractive
			if (eventNum == 15) {
				Core.text.gameOutput("You decide to try and be coy about how you feel about the minotaur, hoping he’ll understand. You give him a few flirty compliments, trying to lead him into drawing the conclusion on his own. You place a hand on his arm as you start to focus a little too much on his physical appearance, watching his face to see when it will click... ", true);
				Player.passi += 1;
				if (Core.flags.switch_DevMode) Core.text.gameOutput("\r\rPassive +1", false);
				mainStory(16);
			}
			if (eventNum == 16) {
				Core.text.gameOutput("\r\rArgo’s eyes widen and his nostrils flare a bit as it finally sinks in after a few moments. You see the fur on this throat twitch as he swallows and he hastily clear his throat. Gently, he pulls your hand away but doesn’t let go. He sinks to one knee so he’s about eye-level with you, cupping his other hand around yours so both hands fully cover your hand.", false);
				Core.text.gameOutput("\r\r“L-listen "+Player.name+"... I appreciate the kind words but I… I just… you should go.” He says, sounding oddly meek.", false);
				Core.text.gameOutput("\r\rHe let’s go of you, quite obviously very flustered. Since Argo seems rather uncomfortable now and keeps looking away from you, you decide to leave the minotaur to his work and thoughts, though feeling a little crestfallen about the rejection.", false);
				Core.flags.tyr_FlirtedWithArgo = true;
				Core.buttons.button(1, "Leave", 10);
			}
			//Help Argo out around his shop
			if (eventNum == 17) {
				Core.text.gameOutput("You ask Argo if he needs any help around his shop. He accepts your offer, saying he could use an extra pair of hands with tidying up the smithy a bit. He hands you a leather smock more suited to your size to put on. Once ready, he sets you right to work moving tools, organizing materials, and sweeping the floor. It’s hard, dirty work but it only take about an hour so before you two are finished.", true);
				Core.text.gameOutput("\r\r“Thanks for the help, "+Player.name+". Here, for your efforts.” Argo thanks, giving you a firm pat on the back before handing you a handful of sigils.", false);
				Core.text.gameOutput("\r\rFinished for now, you take the smock off and hand it back to Argo. Having to get back to work, you give the minotaur a hug before leaving.", false);
				Core.bag.sigils += 26;
				Player.str += 1;
				Core.flags.tyr_HelpedArgoAtShop = true;
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
					//PlaceHolder
					Core.text.gameOutput("\r\rSasha takes off after the two of you have hung out for a few hours, saying she needs to check on her father and brother. You decide to hang around for a bit longer, despite the fact you haven't gotten a bite in awhile. As you wait, you start to get drowsy and, eventually, nod off to have a nap.", false);
					Core.buttons.button(1, "Next", 30);
					//Core.text.gameOutput("\r\r“Hey, "+Player.name+"... I think we should try having sex.” Sasha says rather bluntly and completely out of the blue.", false);
					//Core.text.gameOutput("\r\r“Uh… what?” You say, staring at her in disbelief, completely ignoring the gentle tug on your fishing line.", false);
					//Core.text.gameOutput("\r\r“I mean, I’ve thought about it and I kinda like you, "+Player.name+". Come on, don’t tell you me you haven’t thought about?” Sasha said, her attention completely focused on you.", false);
					//Core.text.gameOutput("\r\rSex has crossed your mind often enough after coming into your own and having that awkward ‘birds and the bees’ talk with your parents a few years back. However… do you really want Sasha to be your first? You two have known each other since you were little and you’ve always trusted her to be there for you when you needed her. Her body has blossomed as well as you take a good look at her. Her hips have widened and her breasts are quite modestly sized. She notices you staring and blushes a little.", false);
					//Core.text.gameOutput("\r\r“You… didn’t answer my question, "+Player.name+". Do you want to have sex? I… I’d rather have my first time be with someone I know and trust. Plus… I’ve always kinda liked you.” She asks, giving you a shy smile.", false);
					//Core.text.gameOutput("\r\rSasha is quite serious about this and you get the feeling you’re not going to get out of this situation without giving her an answer. Do you want to lose your virginity to Sasha or are you simply not interested in pushing your relationship with her further?", false);
					//Core.buttons.button(1, "Sex!", 26);
					//Core.buttons.button(2, "No Sex", 27);
				}
				else if (Core.flags.tyr_DayWithBrian) {
					Core.text.gameOutput("You arrive at your favorite spot fairly far into the forest that borders the western side of Tyr Village. Here, a creek runs past the roots of a very old white oak tree. Brian is standing by the tree waiting for you.", true);
					Core.text.gameOutput("\r\r“Took you long enough to get here. I hope it wasn’t because your mom caught you.” He says, smiling mirthfully.", false);
					Core.text.gameOutput("\r\rYou assure him that you snuck in and out without being detected, proudly holding up your fishing pole. He laughs and helps you dig in the bank for worms to use as bait. The two of you sit down and you cast the line and begin the waiting game for your first bite. You and Brian talk about the harvest and gossip about the latest rumors and such you’ve heard around the village. Sadly, the fish aren’t biting much but you two fill the time with jokes and other games.", false);
					//PlaceHolder
					Core.text.gameOutput("\r\rBrian takes off after the two of you have hung out for a few hours, saying he needs to check on his father and sister. You decide to hang around for a bit longer, despite the fact you haven't gotten a bite in awhile. As you wait, you start to get drowsy and, eventually, nod off to have a nap.", false);
					Core.buttons.button(1, "Next", 0);
					//Core.text.gameOutput("\r\r“Hey, "+Player.name+"... do you think we should have sex?.” Brian says rather bluntly and completely out of the blue.", false);
					//Core.text.gameOutput("\r\r“Uh… what?” You say, staring at him in disbelief, completely ignoring the gentle tug on your fishing line.", false);
					//Core.text.gameOutput("\r\r“I mean, I’ve thought about it and I kinda like you, "+Player.name+". Have… you ever thought about it?” Brian asked, his attention completely focused on you.", false);
					//Core.text.gameOutput("\r\rSex has crossed your mind often enough after coming into your own and having that awkward ‘birds and the bees’ talk with your parents a few years back. However… do you really want Brian to be your first? You two have known each other since you were little and you’ve always trusted him to be there for you when you needed him. His body hasn’t changed much, though he’s put on more muscle and a more masculine physique.", false);
					//Core.text.gameOutput("\r\r“You… didn’t answer my question, "+Player.name+". Do you want to have sex? I… I’d rather have my first time be with someone I know and trust. Plus… I’ve always kinda liked you.” He asks, looking directly at you for your answer.", false);
					//Core.text.gameOutput("\r\rBrian is quite serious about this and you get the feeling you’re not going to get out of this situation without giving him an answer. Do you want to lose your virginity to Brian or are you simply not interested in pushing your relationship with him further?", false);
					//Core.buttons.button(1, "Sex!", 26);
					//Core.buttons.button(2, "No Sex", 27);
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
					Core.buttons.button(1, "Next", 0);
				}
			}
			
			//Decline Sasha's/Brian's offer of sex
			if (eventNum == 27) {
				if (Core.flags.tyr_DayWithSasha) {
					Core.text.gameOutput("“I’m sorry but I can’t Sasha.” You tell her a bit bluntly.", true);
					Core.text.gameOutput("r\r\Sasha’s expression falls a little bit but she gives you a wan smile anyway. An awkward silence falls between you two as you go back to fishing. After a few tense minutes, Sasha gets up and stretches.", false);
					Core.text.gameOutput("\r\r“Well, I better head back. I’m sure father is wondering where I’ve run off to now. I’ll… see you around, "+Player.name+".” She says, heading back to the village.", false);
					Core.text.gameOutput("\r\rYou decide to stay here and continue fishing to help clear your mind. However, the fish don’t seem to be in a biting mood. As you sit there and wait, you feel drowsy and, eventually, fall asleep for a nice, comfortable nap.", false);
				}
				if (Core.flags.tyr_DayWithBrian) {
					Core.text.gameOutput("“I’m sorry but I can’t Brian.” You tell him a bit bluntly.", true);
					Core.text.gameOutput("\r\rBrian’s expression falls a little bit but he gives you a wan smile anyway. An awkward silence falls between you two as you go back to fishing. After a few tense minutes, Brian gets up and stretches.", false);
					Core.text.gameOutput("\r\r“Well, I better head back. I’m sure father is wondering where I’ve run off to now. I’ll… see you around, "+Player.name+".” He says, heading back to the village.", false);
					Core.text.gameOutput("\r\rYou decide to stay here and continue fishing to help clear your mind. However, the fish don’t seem to be in a biting. As you sit there and wait, you feel drowsy and, eventually, fall asleep for a nice, comfortable nap.", false);
				}
				Core.buttons.button(1, "Next", 30)
			}
			//Sex with Sasha
			if (eventNum == 28) {
				Core.text.gameOutput("The two of you stare at each other in a mildly awkward silence, unsure of who should make the first move but you swallow your nerves and pull Sasha to you, kissing her rather passionately. Tongues clumsily tangle together as you two continue and instinct starts to take over. You part from her,briefly, to pull her tunic up over her head. You struggle with the breast binding but Sasha unties the knot and the material falls free, leaving her breasts completely exposed. She groans against your mouth as you grope her chest, pinching and tugging on her pert nipples. Sasha moans and squirms under your touch, running her hands up under your tunic and over your [chest] chest.", true);
				Core.text.gameOutput("\r\rStarting to get impatient, Sasha suddenly gets more aggressive and uses her weight to push you onto your back. Straddling your hips, Sasha forcibly pulls your tunic up over your head and unlaces the tie to your breeches before yanking both pants and underwear down to mid-thigh, exposing your [genital].", false);
				if (Player.penisArea > 0) {
					Core.text.gameOutput("\r\rYour arousal is quite apparent as your [penis] stands at attention, [tip] damp with beads of pre-cum. Sasha’s fingertips brush along the shaft, gently mapping your length from base to tip. Your hips buck and squirm on their own under the stimulation, breath catching in your chest as Sasha continues to play with your [cock], focusing one hand around the tip while she uses her free hand to gently squeeze and massage your [balls]. Sasha giggles as she strokes your [cock] more rigorously, hand squeezing tightly.", false);
					Core.text.gameOutput("\r\rThe stimulation becomes too much too quickly and you grab Sasha’s arm to stop her. She gives you a confused look and asks if everything is ok but you reassure her, kissing her passionately when she continues to look doubtful.", false);
					Core.text.gameOutput("\r\rMore confident in your kissing skills, you brace one arm around Sasha before rolling you two over, switching positions so you’re on top of her. She lies there, face and throat flushed pink and lips swollen. She gives you a lopsided smile as you lower your gaze and untie her pants and pull them down along with her undergarments. Her panties are already soaked, lips of her cunt parted and soaked. You immediately press a couple of fingers inside her, feeling her clamp down tightly around them as your thumb rubs against her clit. The stimulation makes Sasha moan quite loudly, bucking and squirming much more violently than she had been earlier.", false);
					Core.text.gameOutput("\r\rAs you slide your fingers in and out of her, you bend down and capture one of her firm nipples in your mouth, tugging and sucking on it. Sasha arches her back completely off the ground, desperately clawing at your arms and shoulders as her cunny rhythmically clenches around your fingers as you pump them in and out of her. Sasha starts begging for your [cock] and with it almost painfully hard, you pull your hand free and spread her legs wider, getting yourself into position. The drooling [tip] of your [cock] rubs again Sasha’s swollen clit and wet cunt as you rock your hips back and forth slowly.", false);
					Core.text.gameOutput("\r\rAfter you tease Sasha to her limit, you adjust your aim and push the [tip] inside of her. Her hips twitch eagerly and she looks at you with glazed eyes, begging for you between breathy gasps and moans. You grab her hips a moment before you jerk forward, ramming your [cock] to the hilt into her pussy and claiming her virginity. Your groan is drowned out by her scream and for a few seconds, you think you’ve hurt her and start to pull out. Sasha immediately locks her legs around your [hip] and arms around your neck, pulling your down and forcing your [cock] back inside. She kisses you and whispers assurances that she’s ok, encouraging you to continue.", false);
					Core.text.gameOutput("\r\rYou start the pace slow, Sasha’s cunt squeezing your [cock] tightly. Eventually, her vagina loosens up enough for you to pick up speed. You ram your hips into Sasha, pushing your [cock] deep into her quivering cunt as her hips buck and rock to meet you thrust for thrust. Both caught up in the passionate heat of the moment, Sasha digs her nails into your back and arms, leaving a trail of red lines as you cover her neck and collarbone in bites and hickies. Your [balls] tighten as you feel yourself on the verge of cumming. Sasha cums first, back completely arched off the grass and hips thrust firmly against yours as her legs squeeze tightly around you. The way her cunny squeezes and pulses around your [cock] is too much for you to endure any longer, dumping your load into her after a couple more short, deep thrusts.", false);
					Core.text.gameOutput("\r\rSpent, you pull your sticky [cock] out of Sasha and fall on your side next to her, breathing hard. Sasha looks a bit dazed as her breathing starts to slow to a more normal rhythm. She scoots closer to you as you wrap your arms around her and hold her close, feeling exhaustion finally catch up to you and you two fall asleep.", false);
				}
				else if (Player.vaginaArea > 0) {
					Core.text.gameOutput("Your exposed [cunt] glistens with moisture, [clit] swollen with anticipation. Sasha smiles and laughs softly as she focuses her attention on your exposed nethers, cupping hand between your [legs] and stroking her fingers against your soaked [cunt]. Your hips quiver and twitch as she plays with you, her free hand squeezing one of your [breasts].", false);
					Core.text.gameOutput("\r\r", false);
				}
				Core.buttons.button(1, "Next", 30);
			}
			//Sex with Brian
			if (eventNum == 29) {
				
			}
			//Dream time!
			if (eventNum == 30) {
				Core.text.gameOutput("You wake to find yourself on the same floating rock you had been on before. You’re in the void again, just like last night. You know this is a dream but something about it feels unsettling real. Like before, you don’t see anyone else and there’s nowhere to go. The other rocks are far from reach and you’re not confident that this dream realm will permit you to jump or move about as you please. However, something feels different; You feel like you’re being watched and yet you don’t see anyone here. You can’t seem to wake yourself up from this so you are stuck for the time being. Time seems endless here and you’re not sure how long you’ve been asleep now.", true);
				Core.text.gameOutput("\r\r“It’s been years since anyone’s wandered in here.” A voice speaks from right behind you.", false);
				Core.text.gameOutput("\r\rYou spin to find yourself facing a person… or creature… no, a combination of both. She stands about an inch shorter than you and has one of the most unusual appearances you’ve ever seen. Her skin is purplish-grey and a combination of soft flesh and patches of reptilian scales, some darkened to form patterns on her throat and arms. She has bright green eyes that seem to have a faint glow to them, face framed with black hair streaked with purple bangs. Her more notable features are the black antlers with glowing green tips that crown the top of her head, the long tail with glowing green hair on the tip, and her digi-jointed, hooved legs covered in black hair. She is scantily clad in a two piece bikini made of animal hide and leather. The belt on her waist is decorated with all kinds of pouches.", false);
				Core.text.gameOutput("\r\r“Who… are you?” You ask, staring at her.", false);
				Core.text.gameOutput("\r\r“That’s not important right now. You look pretty… ordinary but I’m sure that’ll change in time. How did you get here?” She answered, though it didn’t really answer your question at all.", false);
				Core.text.gameOutput("\r\r“I fell asleep. What is this place?” You tell her, looking around again.", false);
				Core.text.gameOutput("\r\r“Nowhere. We never gave it a proper name. I would ask how you managed to get here but I already know… however, you shouldn’t be here, "+Player.name+". This place is dangerous, for you at least.” She goes on, brow furrowing.", false);
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
				if (motherContainer.Amulet) {
					Core.text.gameOutput("\r\rYou notice that your mother still has the family heirloom pendant around her neck. It’s been in your family for generations. You think about taking it, but you hesitate, unwilling to touch your mother’s corpse. What will you do?", false);
					Core.buttons.button(1, "Take", 34);
				}
				Core.buttons.button(2, "Leave", 35);
			}
			//Take the amulet from Player's dead mom
			if (eventNum == 34) {
				Core.text.gameOutput("You take a deep breath, carefully kneeling next to her and untying the soaked amulet from around her throat. Her body is still warm but you try not to think about how long she’s actually been dead or what was done to her before hand. You wipe the amulet off on the edge of your tunic. The pendant itself is simply a piece of hammered iron with a sheaf of wheat and a sickle stamped on it. Your parents would tell you stories of how it brought luck to your family during times of tragedy and great need. Perhaps it will bring you the same luck. For now, you pocket it and back away from your mother, returning to the smashed den.", true);
				motherContainer.Amulet = false;
				Core.bag.keepsakes.push("Family Amulet");
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
		}
		

	}
	
}
