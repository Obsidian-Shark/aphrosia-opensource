package draconis {
	
	import draconis.*;
	
	public class Story {

		public function Story() {
			// constructor code
		}
		public static function mainStory(eventNum:Number) {
			Core.flags.activeGame = true;
			Core.buttons.flushBtns();
			//INTRODUCTION
			if (eventNum == 1) {
				Core.text.gameOutput("You wake up, expecting it to be morning but, instead, you find yourself staring up at a endless, blank sky as it shifts from hues of violet to inky indigo. The surface underneath you isn’t the soft fabric of your mattress but hard, cold black stone. You recall that you fell asleep in your own bed at curfew but how you got here… this must be a dream you think to yourself. Simply a strange dream. You get to your feet and have a look around, only to find that the rock is actually quite small and floating in the middle of, well, nothing. There are other rocks around you of various sizes and shape but they are too far away to attempt jumping to. You seem to be the only soul present in this strange landscape.", true);
				Core.text.gameOutput("\r\rThe strange sense of being watched creeps up the back of your neck but, again, there is no one here by you. You pinch yourself to double check and feel no pain. Definitely a dream… however, you feel like you’ve been here before. You feel like you should know this place but this is the first time you can recall ever seeing it.", false);
				Core.text.gameOutput("\r\rYou suddenly hear… something. At first, it’s very faint and hard to make out but the sound steadily gets louder until you realize someone is shouting your name. Your name… what is your name? You seem to have a hard time remembering it now.", false);
				Core.screens.game.nameInput.visible = true;
				Core.buttons.button1("Confirm", 2);
			}
			if (eventNum == 2) {
				if (Core.screens.game.nameInput.text == "") {
					Core.text.gameOutput("Pick a name, dunce.", true);
					Core.buttons.button1("Confirm", 2);
				}
				else {
					Core.text.gameOutput("“[pcName]! Get the hell up, you lazy bum!” A familiar, masculine voice calls.", true);
				}
			}
		}

	}
	
}
