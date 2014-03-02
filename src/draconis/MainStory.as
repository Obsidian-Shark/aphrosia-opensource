package draconis {
	
	/**
	 * ...
	 * @author Obsidian Shark
	 */
	
	import draconis.*;
	
	public class MainStory {

		public function MainStory() {
			// constructor code
		}
		public static function mainStory(eventNum:Number):void {
			Core.flags.activeGame = true;
			Core.events.currEvent = eventNum;
			Core.buttons.flushBtns();
			//INTRO CHAPTER
			if (eventNum == 1) {
				Core.text.gameOutput("You find yourself standing on a rock floating in the middle of… well, nothing. The ‘sky’ that surrounds you is tinted a shade of bluish-violet but there’s not a single star or cloud. The ‘air’ also seems to have no temperature to it and you can’t feel the slightest of breezes. The only thing that accompanies you in this void is other, floating, rocks of various shapes and sizes. By now, you’ve probably figured out that this is, likely, a dream but most of your dreams consist of subjects and scenarios of a more inventive and, probably, perverse matter than floating rocks in a void.", true);
				Core.text.gameOutput("\r\r“Oi! Up here!” A feminine voice shouts from somewhere above you.", false);
				Core.buttons.doNext(2);
			}
			if (eventNum == 2) {
				Core.text.gameOutput("You tilt your head up and find yourself staring at a grey-skinned person… at least you think it’s a person. You take a step back as the creature drops down, doing a flip so that it’s standing the correct way up. The first thing you notice about this stranger is that it is actually a she… or at least appears to be female. Her grey skin is a combination of smooth flesh and reptilian scales, clad in a very skimpy bikini and a belt decorated with an assortment of pouches. Though she appears, mostly, human, your eyes are also drawn to the fact that her legs, from the knees down, are hooved and covered in a fine layer of black fur. A long tail tipped with glowing green hair hangs behind her and a pair of pointed ears and antlers pokes out from under her long, black hair, bangs accented with a broad stripe of purple. Bright, emerald-colored eyes give you a scrutinizing look but she interrupts you as soon as you attempt uttering a single word.", true);
				Core.text.gameOutput("\r\r“No time for questions because I’m sure you have a lot. I’ve got to get this all sorted out and get you on your way before you wake up. So… what’s your name?”", false);
				Core.events.inputName();
			}
			if (eventNum == 3) {
				if (Core.screens.game.nameInput.text == "") {
					Core.text.gameOutput("Rhapsody scowls at you and rolls her eyes, hoof pawing at the ground impatiently.", true);
					Core.text.gameOutput("\r\r“This is no time to be dicking around. Name… if you don’t mind. Some of us here have places to be.” She snaps in an irritated tone.", false);
					Core.screens.game.btn1.visible = true;
					Core.screens.game.btn1.btnText.text = "Confirm";
					Core.buttons.btn1Choice = 3;
				}
				else {
					Core.events.setPlayerName();
					Core.text.gameOutput("“A pleasure to meet you, "+Player.name+". Who I am is not important right now. We’ll have time for proper introductions later on.” The faun-like creature replies, cutting you off before you can ask the question on the tip of your tongue.", true);
					Core.text.gameOutput("\r\rOut of nowhere, she pulls a small book and a quill from thin air and jots something down on the page. As soon as she’s done scribbling whatever note down, she looks up at you again. You’re not sure why she’s staring at you so intently.", false);
					Core.text.gameOutput("\r\r“This is going to sound a little stupid but… I honestly can’t tell ‘what’ you are. I mean, you’re human but… are you a guy or a chick? And before you ask, because I know you’re thinking it, you can’t be both or neither or some odd combination right now. Too much of a headache and I’m already behind schedule.” She huffs, cutting you off once again before you can get a word in.", false);
					Core.text.gameOutput("\r\rThis is starting to seem more like an interrogation than any sort of conversation you’ve ever had. She starts pawing at the rock with one of her cloven hooves as she waits for your answer.", false);
					Core.buttons.btn1Choice = 4;
					Core.buttons.btn2Choice = 4;
					Core.screens.game.btn1.btnText.text = "Male";
					Core.screens.game.btn2.btnText.text = "Female";
					Core.screens.game.btn1.visible = true;
					Core.screens.game.btn2.visible = true;
				}
			}
			if (eventNum == 4) {
				//Player decides to be a man
				if (Player.gender == 1) {
					Core.text.gameOutput("“I see, so you’ve got the family jewels, eh? Fair enough. Let me just make a note…” She mumbles, scribbling down something in her small book.", true);
				}
				//Player decides to be a chick
				else if (Player.gender == 2) {
					Core.text.gameOutput("“Baby-maker it is then. Let me just make a note…” She mumbles, scribbling down something in her small book.", true);
				}
				Core.text.gameOutput("\r\rOnce she’s finished writing down things in her book, she snaps it closed and it suddenly disappears, along with the quill she was using. You swear you didn’t blink but there’s no trace of the objects. She gives you a toothy smile, revealing she has two sets of upper and lower canines.", false);
				Core.text.gameOutput("\r\r“Well, it was nice meeting you. We’ll meet again, I’m sure of it.” She says, giving you a wave.", false);
				Core.text.gameOutput("\r\rAt first, you think she’s about to leave but then the ground gives out from underneath you and you fall straight down. Your desperate grab for the edge is very unsuccessful and you’re sent plunging into the black void… only to hit the solid wood floor of your bedroom with a loud ‘thud’.", false);
				Core.buttons.doNext(5);
			}
			if (eventNum == 5) {
				Core.text.gameOutput("It takes a moment for everything to snap back into place but you find yourself on the floor with your bed sheet tangled around your legs. You can hear your older brother, Roland, laughing… since this isn’t the first time he’s tipped you out of bed to wake you up. Bright sunlight comes through the window, likely being close to mid-day. Groggily, you pick yourself up and yawn, already starting to feel a bit sore from the impact.", true);
				Core.text.gameOutput("\r\r“About time you woke up, "+Player.name+". It’s nearly mid-day and mum’s already up in fuss about your lazy ass. Get washed up and get down to the kitchen fast. I have to go help Da in the fields.” He says, grinning smugly.", false);
				Core.buttons.btn1Choice = 6;
				Core.buttons.btn2Choice = 7;
				Core.screens.game.btn1.btnText.text = "Scold";
				Core.screens.game.btn2.btnText.text = "Throw";
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
			}
			//Scold Roland for being an asshole... because the Player is beta as fuck
			if (eventNum == 6) {
				Core.text.gameOutput("“Fuck you, Roland.” You growl, glaring at him hatefully.", true);
				mainStory(8);
			}
			//Bitch at Roland for being an asshole... increase Aggression score for alphaness
			if (eventNum == 7) {
				Core.text.gameOutput("You grab your pillow and chuck it at Roland’s head. Since this kind of thing is routine between you two, he easily dodges and the pillow hits the wall behind him.", true);
				mainStory(8);
			}
			if (eventNum == 8) {
				Core.text.gameOutput("\r\rHe laughs and leaves the room, reminding you to get a move on. Once he’s gone, you grab a change of clothes and head into the washroom. The bucket is full of cold water but you scrub yourself down and dry off before getting dressed. As you’re leaving the bedroom, you get a glance outside the window. It really is a beautiful day, with clear skies and a pleasant breeze blowing through to counter the heat of the bright sun. Your eyes wander to your treasured fishing pole but your mother is expecting you down stairs in the kitchen and from the sounds of it, she’s not too pleased with you.", false);
				Core.buttons.doNext(9);
			}
			if (eventNum == 9) {
				Core.text.gameOutput("You head downstairs and walk into the kitchen to find it bustling with activity. Your younger twin sisters look up from cutting and washing vegetables and give you disappointed scowls. Unlike you and the rest of the family, which has brown hair and eyes, your sisters have black hair and blue eyes. It’s hard to believe the three of you are related but you remind yourself you were there the day they were born. Your thoughts are immediately cut short when your mother turns around, leaving tonight’s dinner to stew on the burner. She glares at you and starts to wave around the greased wooden spoon she’s holding and you, instinctively, flinch back in fear of being struck with the nefarious cooking utensil.", true);
				if (Player.gender == 1) {
					Core.text.gameOutput("\r\r“About time you got out of bed, "+Player.name+". I’d send you out to the fields to help the other menfolk tending to the fields like your brother and father are but I need you to run some errands in town for me.” She chides fiercely, pointing at you with the spoon.", false);
				}
				else if (Player.gender == 2) {
					Core.text.gameOutput("\r\r“About time you got out of bed, "+Player.name+". Your sisters have been kind enough to get up early and help me with the chores and I’d make you do the same but I need you to run some errands in town for me.” She chides fiercely, pointing at you with the spoon.", false);
				}
				Core.text.gameOutput("\r\rShe directs your attention to a large bag. You notice there are various packages inside, likely baked goods from the smell of it. The smell of food makes your stomach growl, reminding you that you haven’t had breakfast yet. You notice a fresh batch sitting out to cool and you try to sneak a piece, only to have that wooden spoon crack down on your hand. You yelp in pain as you snatch your hand back, looking up to meet your mother’s stern glare.", false);
				Core.text.gameOutput("\r\r“You slept in, so you gotta work for your lunch now.” She chides, waving the spoon in your face as you nurse your hand.", false);
				Core.buttons.doNext(10);
			}
			//Head into Tyr
			if (eventNum == 10) {
				Core.text.gameOutput("Apparently, your mother wants you to deliver these freshly made loaves of bread to the Iron Sickle, a tavern and inn in the center of Tyr Village. A trip into the small village you call home would be a welcome distraction from doing chores around the house so you readily agree, snatch up the bag, and quickly hurry on your way before your mother has the chance to change her mind. Your family’s home is, luckily, only a short walk from Tyr. The village is really just a collection of homes, the tavern, and a couple of shops on a main road that connects to the Merchant Highway. The roadway is cluttered with horse-drawn carts and travelers. Being a farming village, it’s not an uncommon sight when the fields are being sown for the next crop and the remains of the harvest being carefully stored or sold. The traffic is especially congested around the entrance of the Iron Sickle Tavern, which is where you need to go.", true);
				Core.text.gameOutput("\r\rYou squeeze inside and weave your way around to make it to the bar. The place is crowded with people laughing, drinking, and enjoying a robust meal. You try to reach the bar where the tavern owner, Jacob, is working but there’s just too many people in your way and the noise is so loud, you doubt he’d hear you if you shouted at the top of your lungs. You try waving him down, unsuccessfully, for several long minutes before his wife, Yilda, notices your desperate attempts.", false);
				Core.text.gameOutput("\r\r“"+Player.name+"? Yer mother send ya here with the bread we asked for?” She says in a loud voice, holding several pints of mead in one hand.", false);
				Core.text.gameOutput("\r\r“Yes! But I can’t get Jacob’s attention!” You yell back at her, hoping she hears you.", false);
				Core.text.gameOutput("\r\rYilda simply nods and yells at a pair of merchants, half-conscious at the bar, to move. They stumble off their barstools, leaving a sizable gap for you to slip up to. You set the bag down on the bar top as Jacob comes over to investigate. He smiles warmly as he recognizes you instantly.", false);
				Core.text.gameOutput("\r\r“Well, if it isn’t my good friend?! I smell your mother’s delicious bread in there! You and your family are the cornerstone of this place.” He greets, immediately checking on your delivery.", false);
				Core.text.gameOutput("\r\rYou can feel the crowd swell and nearly crush you into the bar. You say a hurried goodbye to Jacob as he’s distracted by the new swarm of customers and squeeze your way out of the tavern and back onto the main road. With your errand done, you can go straight home or explore the village a little bit.", false);
				Core.buttons.doNext(11);
			}
			//Explore Tyr... before it gets fucked up later on
			if (eventNum == 11) {
				Core.screens.game.btnSaveGame.visible = true;
				Core.text.gameOutput("The main road that passes through the center of Tyr is bustling with activity, crowded with carts and merchants from all over Esyr. Despite the unusual amount of travelers, you can easily recognize many of the villagers who call Tyr home.", true);
				Core.text.gameOutput("\r\rArgo appears to be busy hammering something on the anvil at the front of his smithy. You can hear the methodical ring of hammer hitting metal echo over all other noises.", false);
				Core.text.gameOutput("\r\rThe Iron Sickle Tavern is crowded with people looking for a good drink, hot meal, and a bed to sleep on but you suspect that Jacob’s probably already sold all the rooms he has for the night.", false);
				Core.text.gameOutput("\r\rYou notice there is a small group of soldiers hanging around the far end of the village, close to the Merchant Highway. You don’t recognize the black armor they wear but something about them makes a nervous chill crawl up your spine", false);
				Core.text.gameOutput("\r\rThe way home isn’t too far off and you know you shouldn’t dally too long, else you’ll waste too much of the day and not get to enjoy the rest of it fishing.", false);
				Core.buttons.btn1Choice = 12;
				Core.buttons.btn2Choice = 17;
				Core.buttons.btn3Choice = 18;
				Core.buttons.btn4Choice = 19;
				//Set label names
				Core.screens.game.btn1.btnText.text = "Smithy";
				Core.screens.game.btn2.btnText.text = "Tavern";
				Core.screens.game.btn3.btnText.text = "Soldiers";
				Core.screens.game.btn4.btnText.text = "Go Home";
				//Set button visibility... this shit needs to be more efficient, seriously
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
				Core.screens.game.btn3.visible = true;
				Core.screens.game.btn4.visible = true;
				Core.screens.game.btnInventory.visible = true;
				Core.screens.game.btnProfile.visible = true;
				Core.screens.game.btnSaveGame.visible = true;
			}
			//Visit Argo at his Blacksmith shop
			if (eventNum == 12) {
				Core.text.gameOutput("You head over to the smithy, where Argo is diligently working on something over the anvil. Argo is one of the few non-humans who calls Tyr home. He is a hulking minotaur covered in black fur peppered with grey as a sign of his age. Both of his horns are blunted and capped with hammered steel. You patiently wait for him to finish hammering out a bar on the anvil before getting his attention. He turns to face you, hammer still clutched in one, beefy, three-fingered hand.", true);
				Core.text.gameOutput("\r\r“"+Player.name+"! What a pleasant surprise. Have you come to give me a hand or to try to squirrel away with another sword?” He says in a deep voice, setting his tools aside and wiping his hands on his stained leather smock.", false);
				Core.text.gameOutput("\r\r“I have some free time. What are you working on?” You ask, craning your neck to get a better look.", false);
				Core.text.gameOutput("\r\r“Broken wagon axle. Those damn merchants never take care of their transportation.” He snorts, shaking his head and making the ring in his nose rattle a little.", false);
				Core.text.gameOutput("\r\rHe picks up the rod and sets it aside to work on later, giving you his undivided attention. Since you’re here, you might as well pick the minotaur’s brain a little or even offer to give him a hand around his shop. Who knows, maybe you’ll get something out of it this time.", false);
				Core.buttons.btn1Choice = 13;
				Core.buttons.btn2Choice = 14;
				Core.buttons.btn4Choice = 16;
				//Set labels
				Core.screens.game.btn1.btnText.text = "Soldiers";
				Core.screens.game.btn2.btnText.text = "Weapons";
				Core.screens.game.btn4.btnText.text = "Leave";
				//Set visibility
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
				Core.screens.game.btn4.visible = true;
				//*SPECIAL* Help Argo out choice
				if (Core.flags.tyr_HelpedArgoAtShop) {
					Core.screens.game.btn3.visible = false
				}
				else {
					Core.buttons.btn3Choice = 15;
					Core.screens.game.btn3.btnText.text = "Help";
					Core.screens.game.btn3.visible = true;
				}
			}
			//Ask Argo about the soldiers hanging around town
			if (eventNum == 13) {
				Core.text.gameOutput("“What are those soldiers doing here?” You ask, remembering the black-armored men you saw earlier.", true);
				Core.text.gameOutput("\r\r“No idea. I’ve never seen armor that color before but I heard there’s been trouble in the realm… which is never good news for folks like us. Don’t go messin’ around them, "+Player.name+". Your parents would be mighty upset if you got arrested or killed.” Argo replies in warning, glancing disapprovingly in the direction of the soldiers but not looking directly at them.", false);
				Core.text.gameOutput("\r\rWith the conversation done, Argo encourages you to head back home, since he has a lot of orders to fill by the week’s end. As you leave, he picks the axle back up and walks over to his furnace to fire the metal. You head back to the main road.", false);
				Core.buttons.doNext(11);
			}
			//Pester Argo about his weapon forging skillz
			if (eventNum == 14) {
				Core.text.gameOutput("You glance around Argo’s massive body to get a look into his shop, hoping to spot the weapons he crafts on occasion sitting out somewhere. He notices your gaze and snorts, crossing his thick arms over his broad chest.", true);
				Core.text.gameOutput("\r\r“Oh no, not after the last time. Your mom was gonna beat me to death with that favored spoon of her’s after you got ahold of that dagger.” He chides, shifting his posture to effectively block your view into his shop.", false);
				Core.text.gameOutput("\r\rAttempt thwarted, you scowl a little but know that nothing is going to sway the stubborn bull’s opinion. You give up and let Argo get back to work on the broken wagon axle. You head back to the main road.", false);
				Core.buttons.doNext(11);	
			}
			//Offer to help Argo out with his shop... get some money and stat increases
			if (eventNum == 15) {
				Core.text.gameOutput("“Did you need any help around your shop Argo?” You ask the minotaur, deciding to make this visit useful.", true);
				Core.text.gameOutput("\r\r“Sure. I could use the extra pair of hands.” He replies with a grunt, looking around the shop for a moment.", false);
				Core.text.gameOutput("\r\rThe hulking minotaur hands you a leather smock similar to the one he’s wearing, though more suitable for your size. Once you have it on, he sets you right to work helping him clean up the place and organize his tools. It’s hot, sweaty work and some of the stuff is heavy but after a couple of hours, you finally finish all of the tasks Argo gave you.", false);
				Core.text.gameOutput("\r\r“Thank you for your help, "+Player.name+". I really appreciate it… and here’s some sigils for your trouble.”", false);
				Core.text.gameOutput("\r\rHe grabs a small handful of coins and drops them into your out stretched palm, ears flicking as his bovine mouth curls into a smile. Though the sum isn’t much, its more than you currently have, so you thank him. Argo has to return to his pile of work, so you leave the smithy as he goes backing to working on that wagon axle. You head back to the main road.", false);
				Core.bag.sigils += 10;
				Player.str += 1;
				Player.muscles += 1;
				Core.flags.tyr_HelpedArgoAtShop = true;
				Core.buttons.doNext(11);
			}
			//Leave Argo alone... he's got shit to do
			if (eventNum == 16) {
				Core.text.gameOutput("You decide to leave Argo to his tasks and bid him a good-day. Argo does the same before grabbing the axle he was working on earlier and heading for the furnace. You head back to the main road.", true);
				Core.buttons.doNext(11);
			}
			//Visit the Iron Sickle Tavern again
			if (eventNum == 17) {
				Core.text.gameOutput("You head to the Iron Sickle to see if you can talk with Jacob or his wife, Yilda, but the place is so crowded that you doubt you’ll be able to get either’s attention to have a conversation with. After a few moments, you head back to the main road.", true);
				Core.buttons.doNext(11);
			}
			//Spy on the soldiers... because that's a smart idea, right?
			if (eventNum == 18) {
				Core.text.gameOutput("The group of soldiers you noticed earlier is still standing near the Merchant’s Highway. There’s about five of them but you don’t see any markings on their armor to identify where they come from or who they serve. You observe them from a distance as to not draw your attention to yourself. They seem to be chatting and, generally, looking quite bored. You’re curious about why they are here but prying into their business is not a wise idea, so you, discreetly, go back to your own business, returning to the main road.", true);
				Core.buttons.doNext(11);
			}
			//Go back home and continue the story
			if (eventNum == 19) {
				Core.text.gameOutput("With your errand finished with, you head back to the house and leave the bustle of the village behind. The silence is a welcome change but you remember that, if you head back inside, your mother will rope you into doing chores until dinner at dusk. Deciding your time is better spent doing something else, you walk around to the side of the house where the window to your room is. The porch wraps around, including a sloped roof over it that sits right under your room.", true);
				Core.text.gameOutput("\r\rLike numerous times before, you grab the edge and haul yourself up as quietly as possible before moving towards the window. Luckily, it’s still unlocked and slides open with ease. You slip into the room, the floorboards creaking slightly under your sudden weight. You pause for a moment, listening for anyone coming up the stairs but no one does, much to your relief. You, as quietly as possible, hurry across the room and grab your fishing rod before sneaking back out. Once you’re back on the ground, you head for the familiar game-trail nearby that will take you through the neighboring forest and to your favorite fishing spot… and no one is the wiser.", false);
				Core.buttons.doNext(20);
			}
			//Slacking off!
			if (eventNum == 20) {
				Core.text.gameOutput("The forest is cool and quiet, the occasional bird flying by in the canopy above or a squirrel scampering by. This place has always been a favorite location of yours since you were a child. You and Roland used to sneak out here all the time but now that he’s older, you come out here on your own. The game-trail takes you to a gurgling creek that runs past an ancient white oak tree. You can see fish darting back and forth in the crystal clear water and settle down in your favorite spot before casting your line after digging up worms from the shallow creek bed. You spend a few hours fishing and only getting a few nibbles… but you’re really here for the peace and quiet. Eventually, you end up nodding off.", true);
				Core.text.gameOutput("\r\r“Oi! Wake up!” A familiar voice calls as you feel something nudging you in the ribs.", false);
				Core.buttons.doNext(21);
			}
			if (eventNum == 21) {
				Core.text.gameOutput("You open your eyes to find yourself lying on your side and… standing over you is the strange faun creature you saw in your dreams the other night. Startled, you snap into full awareness and stumble away from her, knocking your fishing pole into the creek. She doesn’t seem fazed by your reaction, though crosses her arm over her chest as her tail curls, loosely, around one furred leg.", true);
				Core.text.gameOutput("\r\r“I-is this another dream?!” You ask, a bit disoriented.", false);
				Core.text.gameOutput("\r\r“Not this time. If you don’t believe me, I can always pinch you or kick you in the shin. I hear you can’t feel pain if you’re dreaming.” She replies nonchalantly, inspecting the nails on one of her hands.", false);
				Core.text.gameOutput("\r\r“Ah… that’s ok. So… are you going to tell me who you are this time or just badger me for useless information like last time?” You reply to her, getting to your feet and brushing the dirt and leaves out of your hair.", false);
				Core.text.gameOutput("\r\r“Ah, right. Didn’t have time for introductions last time. For all intent and purposes, you’ll know me as… Rhapsody. Yes, Rhapsody… detached enough not to give away anything yet.” She mumbles, seemingly to herself.", false);
				Core.text.gameOutput("\r\r“O...kay?”", false);
				Core.text.gameOutput("\r\r“Nevermind. All you need to know is that I’m to be called Rhapsody. Pleasure to meet you and all that shit. I came out here because… well, I’m not really sure why, other than I’m bored.” Rhapsody replies a bit crossly.", false);
				Core.text.gameOutput("\r\rYou’re not quite sure what to make of this encounter so far. You’re pretty certain that all of this is really happening but it’s such a surreal experience… maybe she’s one of those Chimaera folk you hear about from travelers, though you’ve never seen them so you have no idea how to identify one, given that Aphrosia is filled with all kinds of strange and exotic creatures. She’s not wearing much aside for the animal hide two-piece you saw her in during your first meeting. A small breeze suddenly disturbs the canopy of the forest above you and she looks at the white oak as if listening to something you can’t hear.", false);
				Core.text.gameOutput("\r\r“The day grows late, so you should probably head home. Before you do though, take this.” Rhapsody suddenly announces out loud.", false);
				Core.text.gameOutput("\r\rBefore you can say anything, she grabs your right wrist and pulls your hand out, palm facing up. She fetches something out of one of the several pouches on her belt and drops it in your hand. It appears to be a piece to some kind of flat, circular stone carving. You can’t really make out what’s carved on it but the edges are smooth, so it didn’t break off anything. You look up at Rhapsody and give her a quizzical look.", false);
				Core.bag.keyStones.push("Maiden");
				Core.buttons.doNext(22);
			}
			if (eventNum == 22) {
				Core.text.gameOutput("“What is this?” You ask, holding up the piece to inspect it.", true);
				Core.text.gameOutput("\r\r“Something that might be of help to you at some point.” She replies cryptically, lips curling in a sly smile.", false);
				Core.text.gameOutput("\r\r“That’s hardly helpful.” You protest, annoyed by her antics.", false);
				Core.text.gameOutput("\r\r“Hey, I’m not really here to be helpful… but seriously, you should head home. We’ll cross paths again… eventually.” She replies, giving you a slight bow before walking off.", false);
				Core.text.gameOutput("\r\rLike before, Rhapsody simply vanishes in the blink of an eye and theres no trace of her presence at all; not even hoof prints in the grass where she had been standing. You look at the stone piece in your hand one more time, then shrug and pocket it. Maybe you can sell it to a merchant tomorrow for some coin. You pick up your fishing pole and head back home as the sky starts to turn into the hues of dusk.", false);
				Core.buttons.doNext(23);
			}
			//Shit starts going down in Tyr
			if (eventNum == 23) {
				Core.text.gameOutput("As the canopy of the forest starts to thin, you notice a column of black smoke rising over the direction of Tyr… which is unusual. Maybe something caught fire but the thought only hurries your steps, wanting to be sure everything is ok but your fears grow worse as you see more and more columns of smoke and can smell burning wood, ash, and blood on the wind as it suddenly changes direction. You drop your fishing pole and sprint full-tilt to your home. Raids by bandits aren’t uncommon but quite unusual for this time of year.", true);
				Core.text.gameOutput("\r\rYou reach your home and are greeted by a grisly scene. The barn has been gutted by the flames consuming it and all of your family’s livestock lays slaughtered all about the property. Your house, luckily, appears to be untouched but your hopes are immediately dashed when you see the corpses of your father and brother lying by the front door, face down in the blood-churned dirt. Your stomach does a flip and it takes every ounce of will not to throw up all over yourself. Concerned about your mother and sisters, you head instead to look for them.", false);
				Core.buttons.doNext(24);
			}
			//Destroyed Home - Den
			if (eventNum == 24) {
				Core.text.gameOutput("The den is completely ransacked and trashed. All of the furniture has been smashed and hacked to bits as well as most of your family’s meager possessions. Anything that may have been worth some value has been taken by whoever attacked, but you see no trace of anyone still in the house.", true);
				Core.text.gameOutput("\r\rYou notice a trail of blood-stained foot-prints leading to and from the kitchen but there’s nothing coming from that direction… which has you incredibly worried.", false);
				Core.text.gameOutput("\r\rThe stairs lead up to your family’s sleeping quarters. You swear you can hear the floorboards above your head creaking, as if someone was up in one of the bedrooms.", false);
				Core.buttons.btn1Choice = 25;
				Core.buttons.btn2Choice = 28;
				//Set labels
				Core.screens.game.btn1.btnText.text = "Kitchen";
				Core.screens.game.btn2.btnText.text = "Upstairs";
				//Set visibility
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
			}
			//Check in the kitchen
			if (eventNum == 25) {
				Core.text.gameOutput("You follow the bloody footprints into the kitchen and are met with a grisly scene. The floor, broken cabinets, and counters are smeared with blood. You can see footprints everywhere, like several people have been in and out of here recently. To your horror, you find your mother’s bloodied corpse slumped by the stove, her favored butcher’s knife clutched tightly in her hands. Her clothes have been ripped off and she looks pretty beaten up… but there’s no chance of saving her when you realize that her throats been slit. Whoever did this was very methodical… and they might come back. It’s best not to linger too long.", true);
				if (Core.flags.tyr_DeadMomHasAmulet) {
					Core.text.gameOutput("\r\rYou notice that your mother still has the family heirloom pendant around her neck. It’s been in your family for generations. You think about taking it, but you hesitate, unwilling to touch your mother’s corpse. What will you do?", false);
					Core.buttons.btn1Choice = 26;
					Core.buttons.btn2Choice = 27;
					//Set labels
					Core.screens.game.btn1.btnText.text = "Take";
					Core.screens.game.btn2.btnText.text = "Leave";
					//Set visibility
					Core.screens.game.btn1.visible = true;
					Core.screens.game.btn2.visible = true;
				}
				else {
					Core.buttons.btn1Choice = 27;
					Core.screens.game.btn1.btnText.text = "Leave";
					Core.screens.game.btn1.visible = true;
				}
			}
			//Take the amulet
			if (eventNum == 26) {
				Core.text.gameOutput("You take a deep breath, carefully close to her and untying the soaked amulet from around her throat. Her body is still warm but you try not to think about how long she’s actually been dead or what was done to her before hand. You wipe the amulet off on the edge of your tunic. The pendant itself is simply a piece of hammered iron with a sheaf of wheat and a sickle stamped on it. Your parents would tell you stories of how it brought luck to your family during times of tragedy and great need. Perhaps it will bring you the same luck. For now, you pocket it and back away from your mother, returning to the smashed den.", true);
				Core.bag.keepsakes.push("Family Amulet");
				Core.flags.tyr_DeadMomHasAmulet = false;
				Core.buttons.doNext(24);
			}
			//Leave Kitchen
			if (eventNum == 27) {
				Core.text.gameOutput("With nothing left in here, you mumble apology under your breath and quickly leave the kitchen, returning to the smashed den.", true);
				Core.buttons.doNext(24);
			}
			//Head upstairs
			if (eventNum == 28) {
				Core.text.gameOutput("You head upstairs as quietly as possible, hoping not to alert whoever is lurking around in one of the bedrooms… which seems like a really bad idea in the first place, considering that you’re not armed and the mysterious lurker could be. You first check the twins’ room but find it empty. You quietly cross the hall to check your parents’ bedroom but its empty as well. You start to relax a little and head back out into the hall.", true);
				Core.text.gameOutput("\r\rYou catch movement headed into your bedroom and, for an instant, you could swear you recognized who it was but don’t want to call out the name… just in case it’s an attacker looking for any loot. You, carefully, sneak to the door of your room and press your back up against the wall. You don’t hear any movement in the room but that isn’t what grabs your attention.", false);
				Core.text.gameOutput("\r\rThe shatter of glass from downstairs is immediately followed by the heavy smell of smoke. You rush to the stairs, only to be greeted by a sea of flames that is, quickly, claiming the ground floor of the house. You start to cough as the smoke gets thicker and the air starts to get warmer and warmer. You run back to your room, covering your mouth to block out the smoke. Luckily, the window is still unlocked and you slip through it out onto the roof covering the porch.", false);
				Core.buttons.doNext(29);
			}
			if (eventNum == 29) {
				Core.text.gameOutput("As soon as your feet touch the ground, you hear shouting and look up to see a small group of soldiers like the ones that had been in town before, but some are on horseback. One is carrying a red banner with the sigil of a crowned black lion. They shout and point at you, the rider spurring his horse into action. You bolt for the forest at full speed, narrowly avoiding the war-steed’s hooves.", true);
				Core.text.gameOutput("\r\rLucky for you, you know the game trails that run through the forest and easily lose the soldiers but it will only be a matter of time before they pick up your trail… unless you find some place to hide and fast. The first place that comes to mind is the ancient white oak tree by the creek. You used to hide under its roots when playing with your siblings as a youngster. Once you get your bearings, you head for that spot, being as careful as possible to not make your passing obvious to any soldiers that pass through here.", false);
				Core.text.gameOutput("\r\rYou reach the creek and the white oak tree, the area strangely silent except for the gurgling of water over the rocks. You find the partially hidden tunnel under the roots and squeeze your way down underneath the tree. It’s a tight fit, considering how much you’ve grown since the last time you’ve used this but you are well out of sight. You can also see out between the gaps in the gnarled roots of the tree. Minutes tick by like hours as you tensely wait for any sound or indication that someone is searching the area but it’s quiet. The sunlight continues to fade and the forest, slowly, gets darker and darker. You begin to hope that the search has been called off and start to orient yourself to crawl out of the hovel when you hear something being dragged through the dirt and hesitate.", false);
				Core.buttons.doNext(30);
			}
			if (eventNum == 30) {
				Core.text.gameOutput("At first, you don’t see anything but you can hear the sound getting steadily louder and louder, accompanied by footsteps. It sounds like something heavy is being dragged along through the grass, dirt, and dead leaves. You quiet your breathing but your heart is racing in panic, thinking it’s the soldiers but a lone figure suddenly appears within your narrowed field of vision. It’s a man… at least you think it is. The angle of light makes it difficult to make out all of his features but the most noticeable detail about him is the sculpted metal mask over his entire head, shaped in the image of a snarling wolf. You crane your neck a little and catch sight of a sword hilt, but the way he’s holding it indicates that the weapon is being dragged behind him.", true);
				Core.text.gameOutput("\r\rThe air seems to take on a sudden chill that has you struggling to keep your teeth from chattering. This masked man looks nothing like the soldiers that had chased you. His chest is bare but you think you see geometric scarring covering the exposed flesh. From the waist down, he wears a smock of some sorts, stained with… something. You are getting a feeling that this guy is not friendly and the way he’s swinging his mask back and forth, he’s searching for something… or someone.", false);
				Core.text.gameOutput("\r\rA sudden breeze rattles the leaves of the white oak sheltering you. The iron-masked man goes completely still and you swear you can hear a voice mixed in with the breeze, whispering something but the words are impossible to make out. After a few minutes, the man turns, lifts the sword with one arm, and rests it on his shoulder before leaving. The sounds of his heavy footprints fade away until you are left in silence. The stress of the ordeal is so great, you are quickly overcome with exhaustion and fall asleep, safely tucked away underneath the ancient white oak.", false);
				Core.buttons.doNext(31);
			}
			//Start Chapter 1
			if (eventNum == 31) {
				Core.text.gameOutput("You wake up the next morning, feeling extremely sore from your cramped sleeping space. With effort, you crawl out from under the tree roots and brush the dirt and debris out of your hair and off your clothes. A bird chirps somewhere in the distance but the forest has a glum atmosphere to it. You remember the events of yesterday but it all doesn’t feel real so… you head home, hoping you aren’t in trouble.", true);
				Core.text.gameOutput("\r\rSadly, your worst fears are realized when you find nothing more than a large pile of smoldering ashes and charred wood where your house used to be. You dare not think about what happened with your family’s remains and, instead, head for the village to see how much of it is left standing.", false);
				Core.text.gameOutput("\r\rWhen you arrive in Tyr, you find the village is nothing more than a charred ghost town now. Carts are overturned and animals and people alike lie slaughtered in the road. Several buildings have collapsed from either fire or other means you can’t figure out. A few buildings are still standing however but there’s no trace of any living souls. The soldiers must have left a few hours ago. A small breeze blows through the town but there’s no warmth anywhere and the empty carnage surrounding you holds no comfort… only despair and fear. Your entire family is gone and your home destroyed. Thoughts of what you’re going to do race through your mind as fear sets in. Where are you going to go? What if the soldiers come back? What happens now? Overwhelmed, you fall to your knees and cry your eyes out.", false);
				Core.text.gameOutput("\r\rAfter you run out of tears and manage to compose yourself, you have a moment of clarity and get back on your feet. The town of Vespyr is only a day north-east of Tyr and would be a good place to, at least, put up your feet for a couple of days so you can figure things out. However, you’re going to need supplies to help tide you over. All you have is whatever in your pockets, which isn’t much. You can probably salvage some supplies from the carts and intact buildings left… though you doubt the soldiers left much behind.", false);
				Core.buttons.doNext(32);
			}
			//Ruins of Tyr HUB
			if (eventNum == 32) {
				Core.text.gameOutput("The village, for the most part, is in utter ruins. Most of the buildings have been burned to varying degrees or completely torn down. The road is churned by the chaos that must have ensued while you were hiding in the forest.", true);
				Core.text.gameOutput("\r\rThe Iron Sickle Tavern is still, somewhat, intact. The door is missing and the entrance is scorched pretty badly but maybe there’s something inside you can salvage.", false);
				Core.text.gameOutput("\r\rThere’s an over-turned cart nearby with some crates and bags. Though it appears to have been looted, the soldiers might have missed something mixed in the mess.", false);
				Core.text.gameOutput("\r\rArgo’s blacksmith shop is an absolute mess but you might find something you can use as a weapon inside.", false);
				Core.buttons.btn1Choice = 33;
				Core.buttons.btn2Choice = 48;
				Core.buttons.btn3Choice = 52;
				Core.buttons.btn4Choice = 53;
				//Set labels... again
				Core.screens.game.btn1.btnText.text = "Tavern";
				Core.screens.game.btn2.btnText.text = "Cart";
				Core.screens.game.btn3.btnText.text = "Smithy";
				Core.screens.game.btn4.btnText.text = "Leave";
				//Set visibility
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
				Core.screens.game.btn3.visible = true;
				Core.screens.game.btn4.visible = true;
			}
			//Investigate the Tavern for shit
			if (eventNum == 33) {
				Core.text.gameOutput("The inside of the tavern is an absolute mess. Most of the furniture is overturned or broken and part of the ceiling has collapsed. In the dim, ashy lighting you can make out charred corpses and dark stains amongst the ash but focus your thoughts on finding supplies.", true);
				Core.buttons.btn1Choice = 34;
				Core.buttons.btn2Choice = 37;
				Core.buttons.btn3Choice = 41;
				Core.buttons.btn4Choice = 47;
				//Set labels... yet again... man this shit's getting old
				Core.screens.game.btn1.btnText.text = "Bar";
				Core.screens.game.btn2.btnText.text = "Corpse";
				Core.screens.game.btn3.btnText.text = "Storage";
				Core.screens.game.btn4.btnText.text = "Leave";
				//Set visibility
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
				Core.screens.game.btn3.visible = true;
				Core.screens.game.btn4.visible = true;
			}
			//Investigate the bar
			if (eventNum == 34) {
				Core.text.gameOutput("The bar, surprisingly, appears to be rather intact, though quite scorched from the fire. There’s broken and melted glass all over the floor behind it and it smells quite heavily of alcohol.", true);
				if (Core.flags.tyrRuins_BarHasHealthVial) {
					Core.text.gameOutput("\r\rThere’s an intact vial filled with a red liquid on the shelf under the bar.", false);
					Core.buttons.btn1Choice = 35;
					Core.buttons.btn2Choice = 36;
					//Set labels
					Core.screens.game.btn1.btnText.text = "Vial";
					Core.screens.game.btn2.btnText.text = "Leave";
					//Set visibility
					Core.screens.game.btn1.visible = true;
					Core.screens.game.btn2.visible = true;
				}
				else {
					Core.buttons.btn1Choice = 36;
					Core.screens.game.btn1.btnText.text = "Leave";
					Core.screens.game.btn1.visible = true;
				}
			}
			//Take the vial in the bar
			if (eventNum == 35) {
				Core.text.gameOutput("You take the vial, noticing it has no label on it. It might have some value at least, so you pocket it.", true);
				Core.bag.sm_HPvial += 1;
				Core.flags.tyrRuins_BarHasHealthVial = false;
				Core.buttons.doNext(34);
			}
			//Leave the bar
			if (eventNum == 36) {
				Core.text.gameOutput("You leave the bar and head back to the main room of the tavern.", true);
				Core.buttons.doNext(33);
			}
			//Check the dead guy in the back
			if (eventNum == 37) {
				Core.text.gameOutput("Near the collapsed area of the roof, you notice a body trapped underneath all of the debris and go to investigate. Whoever this poor soul was, the fire burned them beyond recognition.", true);
				if (Core.flags.tyrRuins_CorpseHasSword) {
					Core.text.gameOutput("\r\rYou notice the hilt of a blade partially clutched in the corpse’s hand. Something about the sword seems familiar…", false);
					Core.buttons.btn1Choice = 38;
					Core.screens.game.btn1.btnText.text = "Sword";
					Core.screens.game.btn1.visible = true;
				}
				if (Core.flags.tyrRuins_CorpseHasKey) {
					Core.text.gameOutput("\r\rAmongst the ash and debris, you notice the glint of hammered iron in the filtered light. It appears to be a key of some sort.", false);
					Core.buttons.btn2Choice = 39;
					Core.screens.game.btn2.btnText.text = "Key";
					Core.screens.game.btn2.visible = true;
				}
				Core.buttons.btn3Choice = 33;
				Core.screens.game.btn3.btnText.text = "Leave";
				Core.screens.game.btn3.visible = true;
			}
			//Take the sword off the dead body... for all the good it will do you
			if (eventNum == 38) {
				Core.text.gameOutput("You pry the sword free from the charred corpse’s grasp and hold it up to get a better look at it in the dim light. You recognize this sword once belonged to Jacob, from his younger days. The blade is worn, rusted, and the edges dull and chipped. It’s useless as a weapon but you take it anyway… just in case.", true);
				Core.flags.tyrRuins_CorpseHasSword = false;
				Core.bag.keepsakes.push("Old Sword");
				Core.flags.player_HasOldSword = true;
				Core.buttons.doNext(37);
			}
			//Take the key
			if (eventNum == 39) {
				Core.text.gameOutput("You pick up the key, the leather thong tied to it mostly burned away. This key probably goes to something in the tavern but it has no markings on it to tell you what it’s for.", true);
				Core.flags.tyrRuins_CorpseHasKey = false;
				Core.flags.player_HasISTKey = true;
				Core.bag.keyRing.push("Storage Key");
				Core.buttons.doNext(37);
			}
			//Leave the corpse alone... since you probably already looted the poor guy
			if (eventNum == 40) {
				Core.text.gameOutput("You back away from the charred corpse and go back to the main room of the tavern.", true);
				Core.buttons.doNext(33);
			}
			//Fun with the Storage room
			if (eventNum == 41) {
				if (Core.flags.tyrRuins_StorageDoorLocked) {
					Core.text.gameOutput("The door to the tavern’s storage room, shockingly enough, is intact. The wood is cracked and scorched black but it is still holding together. Even the lock appears undamaged… which is unfortunate because it keeps you from getting inside.", true);
					Core.buttons.btn1Choice = 42;
					Core.buttons.btn2Choice = 43;
					Core.buttons.btn3Choice = 44;
					//Set labels
					Core.screens.game.btn1.btnText.text = "Lock";
					Core.screens.game.btn2.btnText.text = "Kick";
					Core.screens.game.btn3.btnText.text = "Leave";
					//Set visiblity
					Core.screens.game.btn1.visible = true;
					Core.screens.game.btn2.visible = true;
					Core.screens.game.btn3.visible = true;
				}
				else {
					Core.text.gameOutput("The storage room sits open to you. Most of the contents have spoiled inside from the heat of the fire.", true);
					if (Core.flags.tyrRuins_StorageHasPurse) {
						Core.text.gameOutput("\r\rThere is a small coin purse sitting on the floor, partially concealed by a fallen shelf.", false);
						Core.buttons.btn1Choice = 45;
						Core.screens.game.btn1.btnText.text = "Purse";
						Core.screens.game.btn1.visible = true;
					}
					if (Core.flags.tyrRuins_StorageHasWhiskey) {
						Core.text.gameOutput("\r\rThere is an intact bottle of whiskey in the back of the storage room, up on a high shelf. The label is a little scorched, but you can make out the words ‘Dragonbloom’ on the aged parchment stuck to the glass.", false);
						Core.buttons.btn2Choice = 46;
						Core.screens.game.btn2.btnText.text = "Whiskey";
						Core.screens.game.btn2.visible = true;
					}
					Core.buttons.btn3Choice = 44;
					Core.screens.game.btn3.btnText.text = "Leave";
					Core.screens.game.btn3.visible = true;
				}
			}
			//Check the Storage door's lock
			if (eventNum == 42) {
				if (Core.flags.player_HasISTKey) {
					Core.text.gameOutput("Despite the scorched damage, the lock is unaffected… and quite strong. Lucky for you, the key you found earlier goes to this lock. You open the door with ease and toss the key, since it no longer has a purpose.", true);
					Core.flags.tyrRuins_StorageDoorLocked = false;
					Core.bag.keyRing.splice("Storage Key");
					Core.buttons.doNext(41);
				}
				else {
					Core.text.gameOutput("Despite the scorched damage, the lock is unaffected… and quite strong. Too bad you’re not a thief or something. Lock-picking tools would be helpful right now, wouldn’t they? There might be a way to open the door though…", true);
					Core.buttons.doNext(41);
				}
			}
			//Kick the door open!
			if (eventNum == 43) {
				Core.text.gameOutput("Since you don’t feel like hunting around for a key that might not even be here and the door looks damaged enough, you decide to use a more… direct approach of getting it open.", true);
				Core.text.gameOutput("\r\rSadly for you, it takes a few attempts before the scorched wood splits in half, leaving the storage room wide open for you to plunder.", false);
				Core.flags.tyrRuins_StorageDoorLocked = false;
				Core.buttons.doNext(41);
			}
			//Leave the Storage room
			if (eventNum == 44) {
				Core.text.gameOutput("You take one last look around before heading back out to the main road running through the village.", true);
				Core.buttons.doNext(33);
			}
			//Take the coin purse from the Storage room... cause money is a good thing
			if (eventNum == 45) {
				Core.text.gameOutput("You pick up the coin purse, feeling the weight of sigils inside. It’s not a lot, but it’s more than you had.", true);
				Core.bag.sigils += 7;
				Core.flags.tyrRuins_StorageHasPurse = false;
				Core.buttons.doNext(41);
			}
			//Take the bottle of whiskey
			if (eventNum == 46) {
				Core.text.gameOutput("Carefully, you grab the whiskey bottle to get a better look at it. It is, indeed, a bottle of Dragonbloom Whiskey… and a pretty old one at that. You decide to hold onto it for now.", true);
				Core.bag.keepsakes.push("Dragonbloom Whiskey");
				Core.flags.tyrRuins_StorageHasWhiskey = false;
				Core.buttons.doNext(41);				
			}
			//Leave the Tavern
			if (eventNum == 47) {
				Core.text.gameOutput("You take one last look around before heading back out to the main road running through the village.", true);
				Core.buttons.doNext(32);
			}
			//Check the Cart for stuff
			if (eventNum == 48) {
				Core.screens.game.btn4.visible = false;
				Core.text.gameOutput("Both wheels on the cart are broken and most of its contents have spilled out on the road. it seems the soldiers have ransacked or destroyed most of the cargo it had been carrying.", true);
				if (Core.flags.tyrRuins_CartHasPurse) {
					Core.text.gameOutput("\r\rThere’s a small coin purse wedged between two broken crates in the cart.", false);
					Core.buttons.btn1Choice = 49;
					Core.screens.game.btn1.btnText.text = "Purse";
					Core.screens.game.btn1.visible = true;
				}
				if (Core.flags.tyrRuins_CartHasVial) {
					Core.text.gameOutput("\r\rOn the ground, you notice there is a vial, filled with a red liquid, half covered by dirt and debris.", false);
					Core.buttons.btn2Choice = 50;
					Core.screens.game.btn2.btnText.text = "Vial";
					Core.screens.game.btn2.visible = true;
				}
				Core.buttons.btn3Choice = 51;
				Core.screens.game.btn3.btnText.text = "Leave";
				Core.screens.game.btn3.visible = true;
			}
			//Take the coin purse... cause money!
			if (eventNum == 49) {
				Core.text.gameOutput("With some effort, you removed the trapped purse without tearing it apart. The weight of coins is slight, but it’s better than finding nothing.", true);
				Core.bag.sigils += 3;
				Core.flags.tyrRuins_CartHasPurse = false;
				Core.buttons.doNext(48);
			}
			//Take the health vial
			if (eventNum == 50) {
				Core.text.gameOutput("You dig out the small vial, noticing there is no label to identify its contents. It’s probably worth something, so you decide to hold onto it for now.", true);
				Core.bag.sm_HPvial += 1;
				Core.flags.tyrRuins_CartHasVial = false;
				Core.buttons.doNext(48);
			}
			//Leave the cart... since it's probably been looted
			if (eventNum == 51) {
				Core.text.gameOutput("Finding nothing of interest, you leave the cart and return to the main road running through the village.", true);
				Core.buttons.doNext(32);
			}
			//Check out Argo's blacksmith shop... maybe there's a weapon here (not really)... the Player gets no weapons because I'm an awful person
			if (eventNum == 52) {
				Core.text.gameOutput("When you arrive at Argo’s shop, you notice that the place is an absolute mess. His tools are scattered all over the floor and most of his equipment damaged in some manner. However, you notice there are soldier corpses lying all around, armor crushed or rended. Argo must have fought the soldiers but you don’t see any sign of the minotaur’s body at all. He either escaped or was probably capture but either outcome brings you small relief in the fact that someone else survived.", true);
				Core.text.gameOutput("\r\rThere doesn’t appear to be anything of use here. The soldiers took whatever they didn’t destroy, so you head back to the main road running through the village.", false);
				Core.buttons.doNext(32);
			}
			//Leave Tyr for good
			if (eventNum == 53) {
				Core.text.gameOutput("You take one last look around before following the road out. The village is eerily quiet but you know you can’t stay here. It is only a matter of time before scavengers and raiders come to investigate the remains of what was once your home. You look up at the sky to gauge the time, somewhere around late morning. If you keep up a steady pace, you’ll likely make it Vespyr just after dark.", true);
				Core.text.gameOutput("\r\rTaking that first step is a little nerve wracking but you’re soon on your way, taking one last look at the ruins of Tyr as they grow smaller and smaller in the distance.", false);
				Core.buttons.doNext(54);
			}
			//Rhapsody pops up again
			if (eventNum == 54) {
				Core.text.gameOutput("About mid-afternoon, you get the sense that you’re being followed but it feels familiar… very familiar. You stop mid-stride and turn your head, catching Rhapsody walking up behind you. For a moment, she looks startled that you caught her but quickly masks her expression.", true);
				Core.text.gameOutput("\r\r“You’re getting smarter, good.” She remarks as she stands next to you, tail curled around her waist loosely.", false);
				Core.text.gameOutput("\r\r“What do you want now?” You sneer at her, not really in the mood for the creature’s antics.", false);
				Core.text.gameOutput("\r\r“Hello to you too, "+Player.name+". I’m… sorry about your family. I take it you’re heading to Vespyr then?” Rhapsody continues, brushing off your temper.", false);
				Core.text.gameOutput("\r\r“So? I don’t see how that’s any of your business.”", false);
				Core.text.gameOutput("\r\rRhapsody suddenly jogs ahead of you and bars your way. You get the feeling your last comment might have ticked her off for some reason as she fixes you with a steely gaze. Though her overall appearance isn’t all that threatening, especially with the revealing two-piece she’s wearing, you feel a chill down your back… similar to the one  you felt when you saw the man with the iron wolf-mask.", false);
				Core.text.gameOutput("\r\r“I understand that you are angry and upset about what happened in Tyr but this was just the beginning. You can’t even defend yourself.” She snaps, refusing to get out of your way.", false);
				Core.text.gameOutput("\r\r“I can protect myself just fine!” You yell at her in response, now getting really ticked off.", false);
				Core.text.gameOutput("\r\r“Then show me.”", false);
				Core.buttons.doNext(55);
			}
			if (eventNum == 55) {
				Core.text.gameOutput("Rhapsody stamps one off down on the ground and, suddenly, you’re back in that place with from your dreams. Where there was once sun, blue sky, and the occasional cloud is now a shifting hues of blue, violet, and black. The both of you are standing on a large rock, the surface completely flat and smooth to the point where you can see a faint reflection of yourself. However… Rhapsody appears to have no reflection. When you look up from her feet, you realize she has a very fierce expression and her body is poised in an aggressive manner.", true);
				Core.text.gameOutput("\r\r“W-whoa, wait! What are you doing?!” You ask her, taken off guard by the sudden shift in scenery.", false);
				Core.text.gameOutput("\r\r“Prove you can protect yourself.” She replies, her voice suddenly a little deeper than you remember it being.", false);
				Core.text.gameOutput("\r\rIt seems you’ve gotten yourself in trouble and there’s no way out of it. You have no choice but to confront Rhapsody but you don’t have a weapon nor do you really know how to fight or use magic. Good luck.", false);
				Core.buttons.doNext(56);
			}
			//Player gets their ass kicked by Rhapsody in the joy of being taught how fighting works
			if (eventNum == 56) {
				Core.combat.encounter(000);
				Core.screens.switchTo("Combat");
				Core.text.combatOutput("You are fighting <b>Rhapsody</b>.", true);
			}
			//After Rhapsody Encounter
			if (eventNum == 57) {
				Core.text.gameOutput("“Not bad… but you have long way to go.” Rhapsody tells you, untouched and unphased by the encounter seconds before.", true);
				Core.text.gameOutput("\r\r“That hardly seemed like a fair fight.” You complain, winded and feeling drained.", false);
				Core.text.gameOutput("\r\r“Nothing in life is fair, " + Player.name + ". You should know that by now. However, you seem capable enough to keep the scavengers from mistaking you for a meal. You should be able to pick up a decent weapon in Vespyr… provided you’ve got the coin.”", false);
				if (Core.flags.player_HasOldSword) {
					Core.text.gameOutput("\r\rRhapsody notices the tarnished blade you’re carrying and gives you a quizzical look.", false);
					Core.text.gameOutput("\r\r“You managed to find a sword? Hmmm… the blacksmith in Vespyr will probably fix that up for you.”", false);
				}
				Core.text.gameOutput("\r\rThere’s an awkward silence between the two of you all of a sudden, which is odd considering how chatting Rhapsody has been on her other encounters. The way she’s looking at you also bothers you. There’s nothing snarky or confident in her gaze… you’re not sure what’s suddenly eating at her. After about a minute or so, she flicks her tail and brushes it off, back to her usual self.", false);
				Core.text.gameOutput("\r\r“Well, this has been fun but I must be on my way. I’ve got… things going on. Stuff to do… all this important stuff. You’ll be fine getting to Vespyr… probably even get some help.” She tells you cryptically.", false);
				Core.text.gameOutput("\r\rBefore you can ask her, she vanishes in the blink of an eye like before, no trace of her presence anywhere. She hasn’t been much help to you yet and you get the nagging feeling that she knows more than you do about going. Getting to Vespyr doesn’t mean just a hot meal and place to shack up but gathering some information. Maybe you can find out where the black armored soldiers went and who they belong to. Noticing the sun is slipping down towards the horizon, you hurry on your way.", false);
				Core.buttons.doNext(58);
			}
			//Arriving in Vespyr
			if (eventNum == 58) {
				Core.text.gameOutput("You reach the south gate of Vespyr as the last rays of sunlight linger in the quickly darkening sky. The guard shift is rotating and they are getting ready to seal the gates for the night. They let you pass without much incident though you are wary. The black-armored soldiers probably passed through here on their way to Tyr Village. However, you don’t see any of the soldiers hanging around here, just the city guard. The observation is a small comfort but you’re exhausted and hungry. After asking a few passing locals for directions, you find the place to be is the Farmer’s Daughter Inn. You find the place easily enough in the city center, near an ornate water fountain that decorates the area.", true);
				Core.text.gameOutput("\r\rThe tavern portion of the inn is crowded with people at the tables and at the bar. You worm your way through drunken patrons and find an empty table in the back corner. You don’t have much money on you, but you doubt they’ll notice you taking a few minutes to rest up before seeing about renting a room for a night. Eventually, you doze off for a quick nap, comfortably nestled in the corner.", false);
				Core.buttons.doNext(59);
			}
			if (eventNum == 59) {
				Core.text.gameOutput("You wake suddenly a few minutes later when you feel the table jolt as someone sits down. Sitting across from you, as you compose yourself, is a man… at least you think he’s a man or was one at some point. Two pairs of horns grow from under his messy black hair and you notice green scales growing on his throat, down to his collar-bone. His entire upper body appears to be bare, aside from the leather straps and metal buckles that make up some sort of harness over his chest. His eyes are the most striking shade of green you’ve ever seen as you stare at him, mouth hanging slightly agape as you take in his appearance.", true);
				Core.text.gameOutput("\r\r“Pardon my intrusion but… this was the only table that appeared to be open. I apologize for waking you.” He replies, his voice surprisingly soft, given his other-worldly appearance.", false);
				Core.text.gameOutput("\r\r“It’s ok. I was just… resting up a bit.” You mumble in reply.", false);
				Core.text.gameOutput("\r\r“Did you travel far?” He asked, curious.", false);
				Core.text.gameOutput("\r\r“Not really. I’m from one of the… nearby farming villages.” You tell him, starting to feel uncomfortable… something the horned man seems to pick on.", false);
				Core.text.gameOutput("\r\r“I see. I apologize for prying into your affairs… however you look quite hungry. Perhaps I can share my meal with you?” He offers kindly.", false);
				Core.text.gameOutput("\r\r“What?! No, no, no… I’m quite alright. You don’t need to…” You start to protest but he immediately cuts you off and calls over one of the serving wenches to place his order.", false);
				Core.buttons.doNext(60);
			}
			if (eventNum == 60) {
				Core.text.gameOutput("After a few minutes, the wench returns with a tray laden with all kinds of foods. The sight of the feast makes your stomach growl greedily in anticipation and your mouth water uncontrollably as the smell fills your nostrils. The horned man smiles as pints of frothing mead are set down on the table as well. You’ve never had alcohol before and it smells pretty weird but you’re more focused on the food presented before you.", true);
				Core.text.gameOutput("\r\r“Please, help yourself. You look like you could use a good meal.” The horned man says encouragingly.", false);
				Core.text.gameOutput("\r\rNeeding no further invitation, you load up your plate with a bit of everything and dig in. There’s not much chance for conversation as you continue to stuff your face with food and drink. Your manners leave a lot to be desired… and a good portion of grease and bits of food get plastered all over your mouth and down the front of your tunic. Everything just tastes so good… a well cooked meal is just what you needed.", false);
				Core.buttons.doNext(61);
			}
			if (eventNum == 61) {
				Core.text.gameOutput("After about an hour, you’ve eaten so much that your belly is bulging, your belt squeezing uncomfortably against your new girth. The amount of food sitting in your stomach has made you quite lethargic as you lean back against the wall and try to clean up the mess you made. The horned man has been completely silent during the entire meal but you are surprised to find he has eaten everything the serving wench had brought. Even the bones have been picked clean, cracked open, and the marrow sucked out...which is a little unnerving.", true);
				Core.text.gameOutput("\r\r“Did you get enough or should I order dessert?” He offers, waving over someone to come clear their table.", false);
				Core.text.gameOutput("\r\rThe mere mention of dessert makes your overly-stuffed stomach to churn uncomfortably and you, politely, decline his offer. This time, he doesn’t press the issue and, instead, orders another couple of pints of mead. You take a few sips but the alcohol from the first pint is already getting to you and adding more is just making you more light-headed. Already a bit exhausted it doesn’t take long for your eyes to get heavy again and you end up falling asleep once more, slumped back against the wall. The last thing you can recall as you fade into sweet and intoxicated unconsciousness is the vibrant eyes of the horned man and his gentle smile.", false);
				Core.text.gameOutput("\r\rHowever, your sleep is troubled by the fresh memories of the attack. The soldiers in black burning down your home… the fate of your family. Your mind tortures you with thoughts of what your parents and brother must have suffered. Then you dream of the man with the iron wolf mask… the chill of his aura. It’s all so very vivid but suddenly, you hear the hum of a lullaby. It feels… familiar and the sensation comforts you, calming your traumatic memories and chasing away the nightmares. The rest of your slumber is peaceful and energizing, the humming fading into nothing more than a whisper.", false);
				Core.buttons.doNext(62);
			}
			if (eventNum == 62) {
				Core.text.gameOutput("You wake to find yourself in an unfamiliar room and no recollection of what happened after you passed out at the table with the horned man. You are alone in the room… no, wait. You’re alone in the bed but there is someone else in the room with you. Bright sunlight shines through the windows, the curtains pulled back to illuminate the entire room. Sitting across the room from you is a person, but it’s not the horned man from the night before. No… this person is clearly not the horned man but a woman.", true);
				Core.text.gameOutput("\r\r“You’re finally awake, human. Was beginning to think you’d sleep the whole day away with as much as you gorged yourself on last night.” She says, her feminine voice cold and betraying notes of annoyance.", false);
				Core.text.gameOutput("\r\r“Um… sorry but who are you and where am I?” You ask, feeling a bit edgy now that you’re fully awake.", false);
				Core.text.gameOutput("\r\rShe gets to her feet, allowing you to get a better look at her. The woman you now identify as an elf, due to her long, pointed ears and lanky body build. She is covered completely in a set of leather armor decorated with pieces of metal. The fabric of a green silk tunic covers what the armor does not. Her auburn hair hangs behind her in a braided ponytail, keeping it out of her face. You’ve never seen an elf before, only heard about them in the stories and tales of traveling merchants. You’re a bit awe-stricken by the encounter. However, she does not seem impressed.", false);
				Core.text.gameOutput("\r\r“What are you gawking at? I guess you’ve never seen an elf before, have you?” She asks snidely, not waiting for you to answer as she continues on.", false);
				Core.text.gameOutput("\r\r“Nevermind, that’s not important. You’re in the Farmer’s Daughter Inn. My… companion fed you and decided to let you sleep in our room, gods know why. He has a soft spot for your kind for some reason. Nothing happened and what little possessions you have are all here, over in the corner.”", false);
				Core.text.gameOutput("\r\rThe elf points to the corner near the bed, where your few belonging are set up. You let out a held breath in relief but it’s only for a moment when you hear the steely hiss of metal sliding against leather. The elven woman has drawn a small, curved knife and idly inspecting it in the light. She glances at you and smirks before sheathing the weapon.", false);
				Core.text.gameOutput("\r\r“Jumpy one, aren’t you?” She comments, the smug look on her face growing.", false);
				Core.text.gameOutput("\r\r“I… well, a little. I should get going. Please thank your companion for me.” You say hastily, scrambling out of bed and grabbing your stuff from the corner.", false);
				Core.buttons.doNext(63);
			}
			if (eventNum == 63) {
				Core.text.gameOutput("However, the elf is blocking the way to the door. Though she doesn’t look all that strong, she is armed to the teeth and you doubt you’d stand a chance against her even if she didn’t have a weapon on her. You just stand there, frozen by indecision.", true);
				Core.text.gameOutput("\r\r“Not yet. He mentioned that you said you came from one of the nearby farming villages. Did you happen to notice any soldiers about lately? Black armor… flying a red banner with a crowned lion?” She asks bluntly.", false);
				Core.text.gameOutput("\r\rYou recall the soldiers you saw after escaping your burning house, the wave of the red banner with the crowned black lion. The memory is very vivid and it makes your head hurt and your stomach churn to think about it. You fight down the urge to vomit and clear your throat. However, it seems your reaction is all the answer she needed. Her hardened emerald eyes soften a little and she gives you a sympathetic look.", false);
				Core.text.gameOutput("\r\r“I… am sorry. Were you the only survivor?” She asks, voice soft and gentle, a sharp contrast to what it had been moments before.", false);
				//Buttons
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
				Core.screens.game.btn1.btnText.text = "Yes";
				Core.screens.game.btn2.btnText.text = "No";
				Core.buttons.btn1Choice = 64;
				Core.buttons.btn2Choice = 65;
			}
			//Telling Elra you were the only survivor
			if (eventNum == 64) {
				Core.text.gameOutput("“I think so.” You reply in a shaky voice.", true);
				mainStory(66);
			}
			//Telling Elra you weren't the only survivor
			if (eventNum == 65) {
				Core.text.gameOutput("“No… I think a few others escaped... I hope they did”. You mutter in reply.", true);
				mainStory(66);
			}
			if (eventNum == 66) {
				Core.text.gameOutput("\r\rShe, gently, presses you for what happened in Tyr and you explain about the fire and the soldiers… you even mention the man you saw in the forest with the iron wolf-mask. You fight the urge to cry as much as possible as you end up reliving some of the events. The elven woman, politely, waits for you to regain your composure.", false);
				Core.text.gameOutput("\r\r“I see… do you have any family here or somewhere nearby?” She asks.", false);
				Core.text.gameOutput("\r\r“I don’t. I just… I don’t know what I’m doing right now.” You tell her.", false);
				Core.buttons.doNext(67);
			}
			if (eventNum == 67) {
				Core.text.gameOutput("Suddenly, she starts to pace, brow knitted tightly in concentration and muttering to herself in a language you don’t recognize but can guess is probably elvish. She does this for a few minutes before stopping and looking directly at you again.", true);
				Core.text.gameOutput("\r\r“I cannot believe I am saying this but it would be the right thing to do. My companion and I, the man you met last night, are traveling to Elsyr. You can find comfort and shelter there. A war is raging right now and… unfortunately, your village has suffered greatly because of it.”", false);
				Core.text.gameOutput("\r\rElsyr… you recognize the name as the giant forest the borders the northern edge of the Green Sea. However, Elsyr is known as elven territory and you’ve heard stories about the tensions between them and humans. However, there’s an elf standing right in front of you, offering to take you to her homeland, get a fresh start. It almost seems too good to be true. Before you answer, the door to the room opens and in walks the horned man. He looks surprised for a brief moment, but immediately gives you a warm smile as he closes the door behind him.", false);
				Core.text.gameOutput("\r\r“Good morning to you both. I hope you are treating our guest with civility, Elra.” He says, patting her armor-clad shoulder.", false);
				Core.text.gameOutput("\r\r“I’m not heartless, Hyperius. I simply was attempting to learn a bit about your new stray.” She replies, glancing at you for a moment before switching to speaking her native tongue. The two speak in elvish, likely about what to do with you. The conversation seems to get a bit heated but after a few moments, Elra calms down and leaves the room.", false);
				Core.buttons.doNext(68);
			}
			if (eventNum == 68) {
				Core.text.gameOutput("“I apologize. Elra can let her prejudices color her tongue. I don't believe i properly introduced myself the other night. I am Hyperius.” He says to you, giving you a reassuring smile.", true);
				Core.text.gameOutput("\r\r“" + Player.name + ". Thank you for your hospitality the other night.” You reply in kind.", false);
				Core.text.gameOutput("\r\r“Elra informed me of your tale... I am, truly, sorry for your loss, " + Player.name + ". If you wish to, Elra's offer to escort you to Elsyr still stands. We are headed in that direction... unless you prefer to stay here.” He reminds you in the same gentle, soft-spoken voice.", false);
				//Buttons
				Core.screens.game.btn1.visible = true;
				Core.screens.game.btn2.visible = true;
				Core.screens.game.btn1.btnText.text = "Stay";
				Core.screens.game.btn2.btnText.text = "Go";
				Core.buttons.btn1Choice = 69;
				Core.buttons.btn2Choice = 70;
			}
			//Decide to stay in Vespyr
			if (eventNum == 69) {
				Core.text.gameOutput("You think about the proposal for a minute and find that staying in Vespyr seems more logical. It’s a safe and somewhat familiar place… a good chance to start over and build a new life for yourself. However, as you are about to speak your answer you suddenly hesitate, throat locking up. The words that come out of your mouth a second later are not your own and you’re powerless to stop it.", true);
				Core.text.gameOutput("\r\r“Sure… I mean, as long as you don’t think I’ll get in the way.” You hear yourself say, despite the internal screaming you’re doing.", false);
				mainStory(71);
			}
			//Decide to go with Hyperius and Elra
			if (eventNum == 70) {
				Core.text.gameOutput("“I suppose it wouldn’t hurt… I mean, as long as you’re ok with me tagging along.” You reply, making up your mind about the matter.", true);
				mainStory(71);
			}
			if (eventNum == 71) {
				Core.text.gameOutput("\r\rHyperius smiles, seemingly pleased by your answer. He pulls a pouch off his belt and tosses it to you. You quickly react and catch it with both hands, immediately feeling the weight of coins inside. Curious, you open it and are surprised to find a large sum of sigils inside, though you’re not sure of the total amount. You look up at him, confused by the money now in your hands.", false);
				Core.text.gameOutput("\r\r“You will need supplies for the trip. That’s about five hundred sigils. Should be enough to get you some fresh clothes and a weapon… though I would recommend some healing potions as well.” Hyperius replies, heading for the door.", false);
				Core.text.gameOutput("\r\r“When you are finished, meet me by the North Gate and we’ll be on our way. It’s a long way to Elsyr across the Green Sea and it will be dangerous. Elra and I will do our best to protect you but there may be situations in which you must protect yourself.” He tells you before closing the door behind him with his tail.", false);
				Core.text.gameOutput("\r\rIt takes a moment for it all to sink in; the money in your hands, traveling across the Green Sea… things were happening so fast. You sink down into a kneeling position, hands clasped over the back of your neck. So much is going on, thinking about it all at once makes your head hurt. After struggling over it for awhile, you decide to take Hyperius’s advice and get some shopping done. You grab what few possessions you own and leave the room. The tavern isn’t as crowded as it was last night.", false);
				//Next button jumps to Vespyr
			}
		}

	}
	
}
