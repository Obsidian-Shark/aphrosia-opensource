package draconis.locations.city {

	/**
	/* ...
	/* @author Obsidian Shark...
	*/
	
	import draconis.*;
	
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
				Core.buttons.button(1, "Tailor", 5050);
				//Core.buttons.button(2, "Apothecary", 5052);
				//Core.buttons.button(3, "Tavern", 5053);
				Core.buttons.button(4, "Tiger Lily", 5024);
				Core.buttons.button(5, "N. Gate", 5025);
			}
			//Tailor Shop
			if (eventNum == 5051) {
				Core.text.gameOutput("You approach the tailor shop but it doesn't appear to be open, so you head back to the fountain.", true);
				Core.buttons.button(1, "Next", 5050);
			}
			//Apothacary
			if (eventNum == 5052) {
				
			}
			//Farmer's Daughter Tavern
			if (eventNum == 5023) {
				
			}
			//Tiger Lily Brothel
			if (eventNum == 5024) {
				Core.text.gameOutput("You head towards the building, but your path is blocked by the muscled and armed guard at the gate. “No clients are being accepted right now. Beat it.” He growls at you, flexing his beefy arms. You get the hint and head back to the fountain.", true);
				Core.buttons.button(1, "Next", 5050);
			}
			//North Gate
			if (eventNum == 5025) {
				Core.text.gameOutput("You shouldn't go this way yet... for reasons. You head back to the fountain for now.", true);
				Core.buttons.button(1, "Next", 5050);
			}
		}
	}
}