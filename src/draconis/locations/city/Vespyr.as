package draconis.locations.city {

	/**
	/* ...
	/* @author Obsidian Shark...
	*/
	
	import draconis.*;
	import draconis.templates.Item;
	
	public class Vespyr {
		
		public function Vespyr() {
			//constructor code
		}
		
		public static function vespyr(eventNum:Number) {
			Core.buttons.flushBtns();
			if (eventNum == 5050) {
				Core.text.gameOutput("You stand in the ‘center’ of the town. The notable landmark is the large, triple-tiered fountain with various statues as part of its design. Small booths are set up around the area with wandering merchants peddling their wares to anyone who passes by. The two has two gates through which the Merchant’s Road runs through; North and West.", true);
				if (Core.flags.vespyr_TraveledWithHyperiusAndElra == false) {
					Core.text.gameOutput("\r\rYou remember that Hyperius has asked you to met him at the North Gate when you’re ready.", false);
				}
				Core.text.gameOutput("\r\rYou notice a sign with a needle and spool of thread hanging over the door. There are mannequins with different tailored outfits on display in the large windows. Being a tailor shop, you’re likely to find some nice clothes.", false);
				Core.text.gameOutput("\r\rThere’s a booth by the fountain with a seedy-looking alchemist. There appears to be all kinds of vials and herbs up for sale.", false);
				Core.text.gameOutput("\r\rThe Farmer’s Daughter Tavern is open, with people coming in and out. It’s a good place to get a meal, find a clean room, and possibly gather information from the travelers and locals that constantly come in and out.", false);
				Core.text.gameOutput("\r\rYou can head towards the North Gate, where it seems a majority of the traffic running through the city is coming from.", false);
				Core.text.gameOutput("\r\rThere’s what appears to be an unmarked tavern on the corner leading towards West Gate. You notice there’s a guard standing at the entrance of the gate. A sign hangs over his head that says ‘Tiger Lily’.", false);
				Core.buttons.button(1, "Tailor", 5051);
				Core.buttons.button(2, "Booth", 5062);
				Core.buttons.button(3, "Tavern", 5067);
				Core.buttons.button(4, "Smithy", 5077);
				Core.buttons.button(5, "N. Gate", 5084);
				Core.buttons.button(6, "Tiger Lily", 5090);
			}
			//Tailor Shop
			if (eventNum == 5051) {
				Core.text.gameOutput("A small bell chimes as you open the door and enter the tailor shop. There’s a welcoming aura to this place as well as a flowery scent in the air. You hear the tell-tale click of hooves on the floor and see a woman coming around the counter to greet you. You recognize her as a faun, a woman with the cloven-hooved legs of a goat along with a pair of horns and ears to match. She is wearing a skirt and tank top made of a soft-looking deep blue material.", true);
				Core.text.gameOutput("\r\r“Welcome to my humble little shop. Can I help you pick out anything?” She asks, greeting you quite warmly.", false);
				Core.text.gameOutput("\r\r“Ah, that’s ok. I think I’ll look around first.” You tell her politely.", false);
				Core.text.gameOutput("\r\rThe faun politely backs off, letting you know she’ll be at the counter if you need help or are ready to make a purchase. You can always talk to her to try and glean some information about what’s going on.", false);
				Core.buttons.button(1, "Next", 5052);
			}
			//Tailor Shop Menu
			if (eventNum == 5052) {
				Core.text.gameOutput("You stand in the tailor’s shop, surrounded by various garments and hand-made clothes. The vibrancy of colors and variety of fabrics is quite impressive. Everything here looks very well made, even the decorative ribbons and hair-clips.", true);
				Core.text.gameOutput("\r\rThere is a set of clothes on display that looks to be made of a strong looking cotton and animal hide. A small tag attached identifies it as ‘Traveler’s Garb’ and costs 50 sigils.", false);
				Core.text.gameOutput("\r\rhere is a leather suit of armor on display. It looks extremely well made and quite protective. A small tag attached identifies it as ‘Light Armor’ and costs 200 sigils.", false);
				Core.buttons.button(1, "Trav. Garb", 5053);
				Core.buttons.button(2, "L. Armor", 5055);
				Core.buttons.button(3, "Talk", 5058);
				if (Core.flags.vespyr_HadSexWithTheFaunShopkeeper) {
					Core.buttons.button(4, "Sex", 5059);
				}
				Core.buttons.button(5, "Leave", 5061);
			}
			//Look at Traveler's Garb
			if (eventNum == 5053) {
				Core.text.gameOutput("The tailor notices you looking at the Traveler’s Garb on display. She asks if you’re interested in purchasing it… she’ll even resize it for you so it fits comfortably and properly. Would you like to buy it for 50 sigils?", true);
				if(Core.pc.sigils < 50) Core.buttons.button(1, "Yes", 5054);
				Core.buttons.button(2, "No", 5052);
			}
			//Purchase Traverler's Garb and place it in Inventory
			if (eventNum == 5054) {
				Core.text.gameOutput("\r\rYou fish out the coin needed for the garment and had it over to the faun, who happily accepts your payment. She opens a drawer near the mannequin and pulls out a neatly folded set of the same outfit and pulls you over to a stand of screens and a mirror. It takes about an hour but the faun gets the garment to fit you comfortably and snugly. Pleased with your purchase, you bid the shop-keeper a good day and head back out to the town center.", false);
				Core.pc.loot(Core.item.cotTunic);
				Core.pc.loot(Core.item.hidePants);
				Core.pc.loot(Core.item.hideBoots);
				Core.pc.sigils -= 50;
				Core.buttons.button(1, "Next", 5050);
			}
			//Look at Leather Armor
			if (eventNum == 5055) {
				Core.text.gameOutput("The tailor notices you looking at the Leather Armor on display. She asks if you’re interested in purchasing it… she’ll even resize it for you so it fits comfortably and properly. Would you like to buy it for two hundred sigils?", true);
				if(Core.pc.sigils < 200)Core.buttons.button(1, "Yes", 5056);
				Core.buttons.button(2, "No", 5052);
			}
			//Purchase Leather Armor and place it in Inventory
			if (eventNum == 5056) {
				Core.text.gameOutput("\r\rYou fish out the coin needed for the garment and had it over to the faun, who happily accepts your payment. She opens a drawer near the mannequin and pulls out a neatly folded set of the same outfit and pulls you over to a stand of screens and a mirror. It takes about an hour but the faun gets the garment to fit you comfortably and snugly. Pleased with your purchase, you bid the shop-keeper a good day and head back out to the town center.", false);
				Core.pc.loot(Core.item.leathVest);
				Core.pc.loot(Core.item.leathPants);
				Core.pc.loot(Core.item.leathBoots);
				Core.pc.sigils -= 200;
				Core.buttons.button(1, "Next", 5050);
			}
			//Don't make a purchase
			if (eventNum == 5057) {
				Core.text.gameOutput("You decide you don’t need the outfit and go back to browsing the store.", true);
				Core.buttons.button(1, "Next", 5052);
			}
			//Talk to the Faun about stuff going on
			if (eventNum == 5058) {
				Core.text.gameOutput("You decide to strike up a conversation with the tailor, maybe learn a little something about what’s going on. The faun is sitting at the counter, working on repairing a tunic when you approach the counter. Her ears flick a moment before she looks up and sets her work aside.", true);
				Core.text.gameOutput("\r\r“What can I do for you?” She asks cheerily, flashing you a warm smile.", false);
				Core.text.gameOutput("\r\r“I was wondering if you can tell me about anything going on around the area.” You ask, deciding to keep it broad and simple.", false);
				Core.text.gameOutput("\r\r“Hmmm… not much I suppose. There have been quite a lot of soldiers from the capital passing through here lately, though no one knows why. Supplies from the farming villages have been short too. People think that centaurs are raiding the villages.” She replies, sounding a bit worriedly.", false);
				Core.text.gameOutput("\r\rCentaurs in the area? You know Vespyr and the various farming villages of the south are all part of the expansive grasslands known as the Green Sea, which is home to various roaming Centaur herds but they never approach human settlements except to trade or seeking temporary shelter… but attacking? Some Centaurs would attack merchants and travelers but a sizable group would be needed to attack a village or town like Vespyr. Something seems suspicious about the story, especially after going through what you had to. You thank the faun for the information and go back to browsing the store.", false);
				Core.buttons.button(1, "Next", 5052);
			}
			//Fuck the Faun again
			if (eventNum == 5059) {
				Core.text.gameOutput("You approach the counter, distracting the faun from her work. She politely greets you and asks what she can help you with. You glance around the store to make sure there aren’t any other customers in the shop before asking if the faun is interested in having sex with you again.", true);
				Core.text.gameOutput("\r\rBeing the promiscuous creature that she is, a wide, sly grin spreads across her pink lips and she winks at you. Hurriedly, the faun gets up and around the counter, locking the door to the shop so the two of you aren’t disturbed. Without a word, she immediately grabs your hand and pulls you into the back room, just like last time, kicking the door closed behind her as she pushes you towards the work table.", false);
			}
			//Sex with the faun
			if (eventNum == 5060) {
				//Text for fucking the faun goes here.
			}
			//Leave the Tailor Shop and return to town
			if (eventNum == 5061) {
				Core.text.gameOutput("Finished looking around, you bid the tailor and good day and leave the shop, heading back to the central plaza of the town.", true);
				Core.buttons.button(1, "Next", 5050);
			}
			//Visit the Apothecary
			if (eventNum == 5062) {
				Core.text.gameOutput("You approach the booth belonging to the seedy robed man by the fountain. There’s all sorts of bottles, vials, and dried plants on display. He notices you looking and immediately gets way too close. Under his hood, the merchant has a severely unkempt beard along with heavy wrinkles, moles, and warts on his face.", true);
				Core.text.gameOutput("\r\r“A customer! Excellent, excellent. Maybe I can interest you in this concoction right here? It will make you a sex god, I guarantee it!”", false);
				Core.text.gameOutput("\r\rA little weirded out by his aggressive salesmanship, you tell him as clear as possible that you are just looking and will ask for his help if you need it. He looks a little crestfallen but steps away, turning his back to you as he mumbles and goes back to trying to lure over more customers.", false);
				Core.buttons.button(1, "Next", 5063);
			}
			//Apothecary Menu
			if (eventNum == 5063) {
				Core.text.gameOutput("You look around the cluttered wares of the alchemist’s booth, hoping to find something useful amongst the mess. Luckily, just about everything has labels so you can tell what is what.", true);
				Core.text.gameOutput("\r\r There’s a cluster of small bundled leaves that catch your eye. The little label attached identifies them as Inferil. Each bundle of 10 costs 20 sigils.", false);
				Core.text.gameOutput("\r\rThere’s a collection of small red health vials for 10 sigils each.", false);
				Core.buttons.button(1, "Inferil", 5064);
				Core.buttons.button(2, "Sm. Vial", 5065);
				Core.buttons.button(3, "Leave", 5066);
			}
			//Purchase some Inferil
			if (eventNum == 5064) {
				Core.text.gameOutput("You decide to buy yourself a bundle of Inferil leaves. You call the alchemist over and hand him the twenty sigils. You place the Inferil leaves in your bag for now and go back to looking around the booth.", true);
				Core.pc.loot(Core.item.inferil);
				Core.pc.sigils -= Core.item.inferil.value;
				Core.buttons.button(1, "Next", 5063);
			}
			//Purchase a Small Health Vial
			if (eventNum == 5065) {
				Core.text.gameOutput("You decide to buy yourself one of those small health vials. You call the alchemist over and hand him the ten sigils. You place the small vial in your bag for now and go back to looking around the booth.", true);
				Core.pc.loot(Core.item.smHPVial);
				Core.pc.sigils -= Core.item.smHPVial.value;
				Core.buttons.button(1, "Next", 5063);
			}
			//Leave the Apothecary Booth and continue exploring the town
			if (eventNum == 5066) {
				Core.text.gameOutput("Done browsing around, you leave the booth before the alchemist notices and tries to push some other weird concoction on you.", true);
				Core.buttons.button(1, "Next", 5050);
			}
			//Visit the Farmer Daughter's Tavern
			if (eventNum == 5067) {
				Core.text.gameOutput("You walk into the Farmer’s Daughter, immediately greeted by the smell of meat roasting in the kitchen. There’s not a lot of people around but there’s a few. You can sit down and order something to eat or drink or try to drum up some conversation with one of the wenches or patrons around the place.", true);
				Core.buttons.button(1, "Next", 5068);
			}
			//Tavern menu
			if (eventNum == 5068) {
				Core.text.gameOutput("There are a few people of interest scattered about the tavern. At the bar, there is a merchant and a drunken man sitting there. A serving wench is cleaning a table and humming to herself. By the fireplace sits a robed figure and you get the feeling that they are watching you.", true);
				Core.buttons.button(1, "Sit", 5069);
				Core.buttons.button(2, "Wench", 5070);
				Core.buttons.button(3, "Merchant", 5071);
				if(Core.flags.vespyr_StoleFromPoorDrunkManYouHeartlessFiend == false) Core.buttons.button(4, "Drunk", 5072);
				if (Core.flags.vespyr_MetWithAmiraTheInformationBroker == false) Core.buttons.button(5, "???", 5075);
				Core.buttons.button(6, "Leave", 5076);
			}
			//Sit down and have a meal
			if (eventNum == 5069) {
				Core.text.gameOutput("You decide to sit down and order yourself something to eat. A serving wench comes over a few minutes after you select a table and takes your order. You don’t have to wait long for your meal; a plate of roasted beef with potatoes and slices of fresh bread. A mug of chilled wine is also set down with your food before you are left to eat in peace.", true);
				Core.text.gameOutput("\r\rAfter enjoying the food, you leave a few sigils as payment for the meal before leaving the tavern to continue exploring Vespyr.", false);
				Core.pc.sigils -= 5;
				Core.buttons.button(1, "Next", 5050);
			}
			//Talk to the serving wench
			if (eventNum == 5070) {
				Core.text.gameOutput("ou walk up to one of the serving wenches, clearing your throat to get her attention from cleaning a table. The busty brunette smiles at you as she straightens up and smoothes out her apron, tucking the cleaning rag in a pocket.", true);
				Core.text.gameOutput("\r\r“How can I help you? Were you looking for a room or something to eat?” She asks politely.", false);
				Core.text.gameOutput("\r\r“No, I’m just looking for news about the area is all.” You reply to her, deciding to keep your questions vague.", false);
				Core.text.gameOutput("\r\r“News? Well, not much happens here but lately, we’ve been seeing less merchants and more soldiers passing through. At first, I thought what everyone else thought… that centaurs were causing problems for the farming villages but…” She starts to talk but suddenly stops and looks around the tavern before motioning you closer to whisper in your ear.", false);
				Core.text.gameOutput("\r\r“I’ve seen soldiers come through with prisoners… farming folk I recognize. I think something bad’s goin’ on but getting involved means trouble.” The wench whispers to you.", false);
				Core.text.gameOutput("\r\rYou try to press her further but she quickly excuses herself and hurries back into the tavern’s kitchen. It wasn’t much information but it was something useful. You decide to try and ask around some more.", false);
				Core.buttons.button(1, "Next", 5068);
			}
			//Talk to the merchant at the bar
			if (eventNum == 5071) {
				Core.text.gameOutput("You approach a man in rich clothing sitting at the bar. He doesn’t take notice of you at first but he has a very depressed expression on his face. You clear your throat several times before getting his attention away from his mug of ale. He glares at you sorrowfully for a moment before recognizing you as a person.", true);
				Core.text.gameOutput("\r\r“Oh, didn’t notice you there. What do you want, urchin?” He gruffs, turning back to his mug.", false);
				Core.text.gameOutput("\r\r“Just looking for news is all.” You tell him.", false);
				Core.text.gameOutput("\r\r“News? You not from around here? Doesn’t matter anyway, the whole realm is going to shit. My business is in ruins!” He sobs, suddenly breaking down into tears.", false);
				Core.text.gameOutput("\r\rYou’re probably not going to get much more out of this man as he sits at the bar, sobbing into his drink. You decide to try and talk to someone else in hopes of getting more information about what’s going on.", false);
				Core.buttons.button(1, "Next", 5068);
			}
			//Check on the drunk at the bar
			if (eventNum == 5072) {
				Core.text.gameOutput("There’s a drunk man half-asleep at the far end of the bar but he appears to be completely unconscious so… you could pick-pocket him. No one in the tavern is paying attention to him and his coin pouch is completely exposed on his belt. It would be easy if you decide to do it.", true);
				Core.buttons.button(1, "Steal", 5073);
				Core.buttons.button(2, "Leave", 5074);
			}
			//Steal from the poor drunk... you bastard
			if (eventNum == 5073) {
				Core.text.gameOutput("You slowly approach the man, keeping an eye on everyone else in the bar to be sure they aren’t on to what you are doing. The man smells putrid but you bear it as you reach for his coin purse and quickly snatch it. You play it off as normally as you can but no one’s noticed what you’ve done and you’ve scored yourself some extra money.", true);
				Core.pc.sigils += 50;
				Core.pc.addSelfish();
				Core.buttons.button(1, "Next", 5068);
			}
			//Leave the drunk man alone
			if (eventNum == 5074) {
				Core.text.gameOutput("You decide to be a good person and leave the drunk alone. He probably doesn’t have that much money on him anyway.", true);
				Core.buttons.button(1, "Next", 5068);
			}
			//Talk to the weird stranger by the fire
			if (eventNum == 5075) {
				Core.text.gameOutput("You decide to see what that strange robed person wants with you, since their hood has been discreetly turned in your direction since you walked into the tavern. You walk over, but they make no move to look away or get up… as if expecting you were going to wander by. You sit down across from them, trying to get a look under their hood but the person craftily keeps their face in the shadows. It seems a more direct approach is needed.", true);
				Core.text.gameOutput("\r\r“Who are you and why have you been watching me like some creeper?” You demand directly.", false);
				Core.text.gameOutput("\r\r“I am no threat, if that’s what you’re getting at. Just a humble traveler, wandering the lands of Aphrosia and plying my trade.” Came the response of a raspy, feminine voice.", false);
				Core.text.gameOutput("\r\rThe figure pulls their hood back, revealing something quite unexpected. The person is a woman, though it’s difficult to tell with her snake-like face. Where a nose should be is a pair of thin slits for nostrils. Her skin is covered in pale green and creame scales. A pair of large, greyish-brown eyes stare stare back at you. You don’t recognize what kind of creature she is but she closely resembles a Naga… without the serpent lower body. She chuckles at your slack-jawed expression.", false);
				Core.text.gameOutput("\r\r“My appearance is quite alarming, is it not? It’s ok, I am quite amused by the shocked expressions I get, hence why I wear the hooded cloak. My trade is information and you seem like you have questions so I will give you some information for free. My name is Amira and I’m sure our paths will cross again, my friend.” She says, getting to her feet and pulling her hood back over her head.", false);
				Core.text.gameOutput("\r\rYou call out to stop her but she simply turns back, smiles, and quickly leaves the tavern. You rush outside but see no trace of her; she seems to have completely vanished. After a few more minutes of futile looking around, you give up and decide to just continue exploring the town.", false);
				Core.flags.vespyr_MetWithAmiraTheInformationBroker = true;
				Core.buttons.button(1, "Next", 5050);
			}
			//Leave the tavern
			if (eventNum == 5076) {
				Core.text.gameOutput("You decide to leave the tavern and continue exploring Vespyr.", true);
				Core.buttons.button(1, "Next", 5050);
			}
			//Visit the Blacksmith
			if (eventNum == 5077) {
				Core.text.gameOutput("You approach the blacksmith shop, seeing a burly man with a thick black beard working at his anvil. There are all kinds of weapons and tools on display… items any adventurer would need. He stops his work when he notices your approach and greets you with a grunt.", true);
				Core.text.gameOutput("\r\r“What can I do for ya, youngin’?” He asks in a deep, accented voice, wiping his hands on his smock.", false);
				if (Core.flags.player_HasOldSword) {
					Core.text.gameOutput("\r\rThe blacksmith notices the tattered sword hilt sticking out of your bag and asks if he can see the sword you’re carrying. You pull it out and hand it to him, hilt - first. The blacksmith carefully inspects every inch of the old weapon, giving it a couple of test swings.", false);
					Core.text.gameOutput("\r\r“This is a finally made blade… shame it is in this state. If you’d like, I can repair this for fifty sigils.”", false);
				}
				Core.buttons.button(1, "Next", 5078);
			}
			//Blacksmith menu
			if (eventNum == 5078) {
				Core.text.gameOutput("The blacksmith directs you to a weapon rack that displays his finest wares. There are several different types of weapons you can choose from here.", true);
				Core.text.gameOutput("\r\rThe axe on the rack has a large, curved blade on one side and a smaller one on the opposite side and can be easily wielded in one hand. The tag attached says it costs 80 sigils.", false);
				Core.text.gameOutput("\r\rThe halberd on the back of the rack has a thin, sharp spear-head, perfect for piercing through defenses. The tag attached says it costs 100 sigils.", false);
				Core.text.gameOutput("\r\rThe dagger on display is small but very sharp and easy to handle. The tag attached says it costs 40 sigils.", false);
				Core.buttons.button(1, "Axe", 5079);
				Core.buttons.button(2, "Halberd", 5080);
				Core.buttons.button(3, "Dagger", 5081);
				if (Core.flags.player_HasOldSword) Core.buttons.button(4, "Repair", 5082);
				Core.buttons.button(5, "Leave", 5083);
			}
			//Purchase the Axe
			if (eventNum == 5079) {
				Core.text.gameOutput("You decide to buy the axe, handing over the correct sigils to the blacksmith before taking the weapon into your hands. Confident with your purchase, you head back to the center of town.", true);
				Core.pc.sigils -= 80;
				Core.pc.loot(Core.item.axe);
				Core.buttons.button(1, "Next", 5050);
			}
			//Purchase the Halberd
			if (eventNum == 5080) {
				Core.text.gameOutput("You decide to buy the halberd, handing over the correct sigils to the blacksmith before taking the weapon into your hands. Confident with your purchase, you head back to the center of town.", true);
				Core.pc.sigils -= 100;
				Core.pc.loot(Core.item.halberd);
				Core.buttons.button(1, "Next", 5050);
			}
			//Purchase the Dagger
			if (eventNum == 5081) {
				Core.text.gameOutput("You decide to buy the dagger, handing over the correct sigils to the blacksmith before taking the weapon into your hands. Confident with your purchase, you head back to the center of town.", true);
				Core.pc.sigils -= 40;
				Core.pc.loot(Core.item.dagger);
				Core.buttons.button(1, "Next", 5050);
			}
			//Repair the Old Sword
			if (eventNum == 5082) {
				Core.text.gameOutput("You agree to have the sword repaired and hand him both the weapon and the money. The blacksmith tells you it’ll take awhile to finish the repairs, so you wander about Vespyr while he works. By the time you come back, the sword is nearly unrecognizable. The blade is polished and sharpened to a fine edge. He even throws in a sheath for you to properly carry the sword around.", true);
				Core.text.gameOutput("\r\r“This blade will serve ya well now lad. Do well to take care of it.” The blacksmith chides before returning to work, leaving you to go back to exploring the town.", false);
				Core.pc.sigils -= 50;
				Core.pc.loot(Core.item.advenBlade);
				Core.buttons.button(1, "Next", 5050);
			}
			//Leave the Blacksmith and continue exploring
			if (eventNum == 5083) {
				Core.text.gameOutput("Finished poking around, you leave the smithy to go back to exploring Vespyr.", true);
				Core.buttons.button(1, "Next", 5050);
			}
			//Go to the North Gate
			if (eventNum == 5084) {
				Core.text.gameOutput("You find yourself standing before the North Gate. Beyond the stone walls of Vespyr is the vast expanse of the Green Sea; waist-high grass spreading endlessly for miles. There are people and caravans traveling back and forth on the Merchant Highway as they come in and out of the town.", true);
				if (Core.flags.vespyr_TraveledWithHyperiusAndElra == false) {
					Core.text.gameOutput("\r\rYou spot Hyperius and Elra standing near the guard house, waiting on you.", false);
					Core.buttons.button(1, "Hyperius", 5085);
				}
				Core.text.gameOutput("\r\rThere’s a beggar sitting in an alleyway nearby, covered in a dirty cloak and coin scattered in their lap.", false);
				if(Core.flags.vespyr_BittenByDisfiguredHomeless == false) Core.buttons.button(2, "Beggar", 5088);
				Core.buttons.button(3, "Town", 5050);
			}
			//Talk to Hyperius
			if (eventNum == 5085) {
				Core.text.gameOutput("“Ah, " + Core.pc.name + ". I hope you’ve gathered the supplies you need? It will be some time before we come across another town.” Hyperius asks, Elra simply scowling and tapping her foot impatiently. Are you ready to head out?", true);
				Core.buttons.button(1, "Yes", 5086);
				Core.buttons.button(2, "No", 5087);
			}
			//You are ready to continue on
			if (eventNum == 5086) {
				Core.text.gameOutput("You feel prepared for the journey to come. Elra lets out an exasperated sigh, glad to finally be on her way.", true);
				Core.text.gameOutput("\r\r*This part of the game does not exist yet, so the story does not continue on from this point.", false);
			}
			//Not ready yet
			if (eventNum == 5087) {
				Core.text.gameOutput("You don’t feel like you’ve fully prepared as of yet. Elra snorts something in elvish but Hyperius gives you an encouraging smile and urges you to go back and look around the shops in Vespyr to be sure.", true);
				Core.buttons.button(1, "Next", 5084);
			}
			//Check on the Beggar
			if (eventNum == 5088) {
				Core.text.gameOutput("You approach the poor, cloaked beggar. You catch a glance of wrinkled, pale flesh and silver hair from under the hood but the person immediately retreats from you. You wonder what happened to this poor soul and fish a coin out of your pocket to toss onto their lap. As you reach out, the person suddenly grabs your arm and pulls it to their hooded face, forcing you down on one knee.", true);
				Core.text.gameOutput("\r\rThe hood suddenly falls back enough for you to get a look at the person. It’s a woman… a very, very old woman. Her silver hair is extremely long and under her sunken brow is a pair of blood red eyes with small black points for pupils. You get a foreboding sense of danger as her cracked, sagging lips open, revealing two pairs of upper and lower sharp canines before they sink into the flesh of your wrist. Despite your struggling, this beggar has an iron-clad grip on you.", false);
				Core.text.gameOutput("\r\rYou can feel her tongue lap against the blood oozing out before she starts sucking on it. A estatic groan escapes her as she greedily feeds on you. You start to feel a bit woozy when she lets you go all of a sudden, lips covered in blood. The wrinkles on her face start to tighten and fade as her age reverses at a rapid pace. She stands and smiles at you as you kneel there, stunned.", false);
				Core.text.gameOutput("\r\r“Your ‘donation’ will be rewarded soon, mortal. Until then…” Her voice rings out, lanced with a seductive undertone.", false);
				Core.text.gameOutput("\r\rA gust of wind forces you to shield your eyes. A moment after, it’s gone as well as the strange woman. You get to your feet and look at your wrist, the bite mark completely gone, only streaks of blood left. You’re not sure who or what that was you just met but you get the feeling this is not going to be the last you see of her.", false);
				Core.flags.vespyr_BittenByDisfiguredHomeless = true;
				Core.buttons.button(1, "Next", 5084);
			}
			//Head back into Vespyr itself
			if (eventNum == 5089) {
				Core.text.gameOutput("You head back into the town to continue looking around.", true);
				Core.buttons.button(1, "Next", 5050);
			}
			//Visit the Tiger Lily Brothel
			if (eventNum == 5090) {
				Core.text.gameOutput("You approach the guarded building, only to have the burly man at the gate block your path. Since he refuses to budge, you have no choice but to check back later.", true);
				Core.buttons.button(1, "Next", 5050);
			}
		}
	}
}