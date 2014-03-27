package draconis.locations.city {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	import draconis.*;
	import draconis.templates.Item;
	
	
	public class TyrRuins {
		
		public function TyrRuins() {
			// constructor code
						
		}
		
		public static function tyrRuins(eventNum:Number) {
			Core.buttons.flushBtns();
			if (eventNum == 5000) {
				Core.text.gameOutput("Tyr is in absolute ruins. Most of the shops and buildings have been ransacked and burned down. Carts lay broken in the street amongst the corpses of horses, cattle, livestock, and people… some of which you recognize as villagers you’ve known all your life.", true);
				Core.text.gameOutput("\r\rArgo’s shop looks like it has been completely ransacked and trashed, but untouched by fire.", false);
				Core.text.gameOutput("\r\rThe tavern has sustained a great deal of damage but has not succumbed to the damage of the flames it seems.", false);
				Core.text.gameOutput("\r\rThere’s an overturned cart with some smashed boxes around it that look like they haven’t been completely ransacked yet.", false);
				Core.buttons.button(1, "Smithy", 5001);
				Core.buttons.button(2, "Tavern", 5002);
				Core.buttons.button(3, "Cart", 5017);
				Core.buttons.button(4, "Leave", 5021);
			}
			//Investigate the ransacked blacksmith shop
			if (eventNum == 5001) {
				Core.text.gameOutput("You approach Argo’s blacksmith shop, hopes low as you see the state of the place. Most of the minotaur’s tools and crafts are either gone, broken, or scattered about the floor. The furnace has been damaged and the anvil tipped over. However… you notice the corpses you see scattered about are all soldiers, some with their armor caved in by the blow of something heavy. You search around but there is no trace of Argo at all. Perhaps he escaped or was taken prisoner but you find small relief in the fact that he might still be alive.", true);
				Core.text.gameOutput("\r\rYou leave the blacksmith shop and return to the center of town to continue searching.", false);
				Core.buttons.button(1, "Next", 5000);
			}
			//Investigate the ruins of the Iron Sickle Tavern
			if (eventNum == 5002) {
				Core.text.gameOutput("The charred floorboards creak and crack under your weight as you wander into the remains of the Iron Sickle. Part of the roof has collapsed and the place is a complete mess. The bar is relatively intact and you can see the door to the storage room in the back. There also appears to be several corpses burned beyond recognition and you don’t want to think about who they might be.", true);
				Core.buttons.button(1, "Bar", 5003);
				Core.buttons.button(2, "Storage", 5006);
				Core.buttons.button(3, "Corpse", 5012);
				Core.buttons.button(4, "Leave", 5016);
			}
			//Check the bar
			if (eventNum == 5003) {
				Core.text.gameOutput("The bar itself is intact, though much of the wood it is made of is scorched, cracked, and burned. The bottles of alcohol and liquor on the burned shelves behind it are either gone or melted shards scattered all over the place.", true);
				if (Core.container.barContainer.Coins) {
					Core.text.gameOutput("\r\rYou notice some sigils scattered about on the charred floor where the till used to be.", false);
					Core.buttons.button(1, "Coins", 5004);
				}
				Core.buttons.button(2, "Leave", 5005);
			}
			//Pick up the coins around the bar
			if (eventNum == 5004) {
				Core.text.gameOutput("You bend down to pick up the coins and pocket them. It’s not much but it’s something.", true);
				Core.pc.sigils += 8;
				Core.container.barContainer.Coins = false;
				Core.buttons.button(1, "Next", 5003);
			}
			//Leave the bar
			if (eventNum == 5005) {
				Core.text.gameOutput("You leave the bar to continue searching the rest of the tavern.", true);
				Core.buttons.button(1, "Next", 5002);
			}
			//Investigate the Storage Room
			if (eventNum == 5006) {
				Core.text.gameOutput("You decide to investigate the storage room in the back of the tavern. You know from past visits that it was used to store food and supplies. This area of the tavern seems in good shape in comparison to the rest of the place.", true);
				if (Core.flags.tyrRuins_StorageDoorLocked) {
					Core.text.gameOutput("\r\rDespite the apparent scorch damage done to the door, you find that the lock is intact and working when you try opening the door. It seems the damage might be enough to break the door in, with some effort, but the key might still be around the tavern somewhere as well.", false);
					Core.buttons.button(1, "Kick", 5007);
					if (Core.flags.player_HasISTKey) {
						Core.buttons.button(2, "Use Key", 5008);
					}
				}
				else {
					Core.text.gameOutput("\r\rThe tavern storage room sits open to you. Surprisingly, the interior is intact but the heat of the flames have spoiled the contents of the room. Despite the low light, you check around for anything salvageable to take with you.", false);
					if (Core.container.strgRmContainer.Whiskey) {
						Core.text.gameOutput("\r\rYou notice there’s an intact bottle of liquid above your head. The label is faded but you can make out the word ‘Dragonbloom Whiskey’.", false);
						Core.buttons.button(1, "Whiskey", 5009);
					}
					if (Core.container.strgRmContainer.Vial)	{
						Core.text.gameOutput("\r\rOn the floor, by your foot, you spot a small vial filled with a bright red liquid. You recognize this as a healing potion, albeit, a small one.", false);
						Core.buttons.button(2, "Vial", 5010);
					}
				}
				Core.buttons.button(3, "Leave", 5011);
			}
			//Kick open the door to the Storage Room
			if (eventNum == 5007) {
				Core.text.gameOutput("You decide to test your strength and kick the door in. Despite the damage, the door is stronger than it looks and it takes a few kicks and slamming your shoulder into it to knock it off its hinges. You’re a little bruised but at now the storage room is open to you.", true);
				Core.flags.tyrRuins_StorageDoorLocked = false;
				Core.buttons.button(1, "Next", 5006);
			}
			//Unlock the door to the storage room
			if (eventNum == 5008) {
				Core.text.gameOutput("Since you found a key, you might as well see if it goes to the lock. Luckily for you, the lock turns as soon as you insert the key and twist. The bolt makes a loud ‘clank’ as it slides open and the door swings open easily enough. Since you no longer need the key, you toss it.", true);
				Core.flags.tyrRuins_StorageDoorLocked = false;
				Core.flags.player_HasISTKey = false;
				Core.pc.drop(Core.item.istKey);
				Core.buttons.button(1, "Next", 5006);
			}
			//Take the Dragonbloom Whiskey bottle
			if (eventNum == 5009) {
				Core.text.gameOutput("You grab the bottle of whiskey. Oddly enough, the glass of the bottle feels soothingly warm to the touch. You place it in your bag.", true);
				Core.container.strgRmContainer.Whiskey = false;
				Core.pc.loot(Core.item.drgblmWhiskey, 1);
				Core.buttons.button(1, "Next", 5006);
			}
			//Take the health vial
			if (eventNum == 5010) {
				Core.text.gameOutput("You pick up the small health potion and stick it in your bag.", true);
				Core.container.strgRmContainer.Vial = false;
				Core.pc.loot(Core.item.smHPVial, 1);
				Core.buttons.button(1, "Next", 5006);
			}
			//Leave the storage room
			if (eventNum == 5011) {
				Core.text.gameOutput("You leave the storage room alone to continue investigating the rest of the tavern.", true);
				Core.buttons.button(1, "Next", 5002);
			}
			//Investigate the Corpse
			if (eventNum == 5012) {
				Core.text.gameOutput("You walk over to the far side of the tavern where part of the roof has collapsed. There’s a charred corpse caught underneath the fallen support beam, burned beyond all recognition. Whoever it was looked as if they had tried to escape.", true);
				if (Core.container.corpseContainer.Sword)	{
					Core.text.gameOutput("\r\rAmongst the ash and debris, you recognize the hilt of the sword Jorgen had hanging up on the wall. Now that you look, the sword is missing from the mount.", false);
					Core.buttons.button(1, "Sword", 5013);
				}
				if (Core.container.corpseContainer.Key){
					Core.text.gameOutput("\r\rHanging from a piece of broken wood is a key made of hammered iron, the leather thong it is tied to barely holding together.", false);
					Core.buttons.button(2, "Key", 5014);
				}
				Core.buttons.button(3, "Leave", 5015);
			}
			//Take the Sword
			if (eventNum == 5013) {
				Core.text.gameOutput("You grab the hilt and pull the sword out from under the ash and debris. Just as you thought, it is the sword Jorgen had on display, a remnant of his days as a mercenary in his youth. The blade is dull, pitted, and covered in rust. You slip it through your belt, since you don’t have a sheath for it.", true);
				Core.container.corpseContainer.Sword = false;
				Core.flags.player_HasOldSword = true;
				Core.pc.loot(Core.item.oldSword, 1);
				Core.buttons.button(1, "Next", 5012);
			}
			//Take the iron key
			if (eventNum == 5014) {
				Core.text.gameOutput("You snap the key off the leather strip. It has no distinguishing marks on it but it’s likely that it goes to something in the tavern.", true);
				Core.container.corpseContainer.Key = false;
				Core.flags.player_HasISTKey = true;
				Core.pc.loot(Core.item.istKey, 1);
				Core.buttons.button(1, "Next", 5012);
			}
			//Leave the Corpse alone
			if (eventNum == 5015) {
				Core.text.gameOutput("You back away from the corpse and decide to continue to investigate the rest of the tavern.", true);
				Core.buttons.button(1, "Next", 5002);
			}
			//Leave the Tavern
			if (eventNum == 5016) {
				Core.text.gameOutput("Given its condition, there’s not much else to investigate in the tavern. You turn and leave, heading back to the main road to continue investigating the rest  of the village.", true);
				Core.buttons.button(1, "Next", 5000);
			}
			//Investigate the Cart
			if (eventNum == 5017) {
				Core.text.gameOutput("The cart you noticed seems to have some of its contents left though it’s not much and most of it isn’t much use to you. The horse that was tethered to the front is dead, flies already buzzing around the gaping wound in its throat. You ignore the grisly scene and focus on searching the cart’s remaining contents.", true);
				if (Core.container.cartContainer.Vial) {
					Core.text.gameOutput("\r\rYou notice a small health potion wedged between two broken crates.", false);
					Core.buttons.button(1, "Vial", 5018);
				}
				if (Core.container.cartContainer.Purse) {
					Core.text.gameOutput("\r\rThere is a small coin purse half-buried in the mud.", false);
					Core.buttons.button(2, "Purse", 5019);
				}
				Core.buttons.button(3, "Leave", 5020);
			}
			//Take the health vial
			if (eventNum == 5018) {
				Core.text.gameOutput("With some effort, you pull the vial out without breaking it and place it in your bag.", true);
				Core.container.cartContainer.Vial = false;
				Core.pc.loot(Core.item.smHPVial, 1);
				Core.buttons.button(1, "Next", 5017);
			}
			//Take the coin purse
			if (eventNum == 5019) {
				Core.text.gameOutput("You dig out the purse and check its contents, finding it has a few sigils inside, which you add to your own purse.", true);
				Core.container.cartContainer.Purse = false;
				Core.pc.sigils += 15;
				Core.buttons.button(1, "Next", 5017);
			}
			//Leave the Cart
			if (eventNum == 5020) {
				Core.text.gameOutput("You decide the cart has no more interest for you and head back to where you had been before.", true);
				Core.buttons.button(1, "Next", 5000);
			}
			//Leave the ruins of Tyr Village
			if (eventNum == 5021) {
				Core.text.gameOutput("You take one last look at the ruins you once called home. Columns of smoke still rise from the direction of the fields but the place is beyond any hope of saving. Family and friends are either dead or missing and you are all on your own with no place to stay. You turn your back on the depressing scene and head for the Merchant Highway to decide on where to go.", true);
				if (Core.flags.player_HasISTKey) {
					Core.text.gameOutput("\r\rPulling it out of your bag, you get the feeling you no longer need this key, so you toss it aside.", false);
					Core.pc.drop(Core.item.istKey);	
				}
				Core.buttons.button(1, "Next", 5022);
			}
			if (eventNum == 5022) {
				Story.mainStory(48);
			}
		}
	}
}