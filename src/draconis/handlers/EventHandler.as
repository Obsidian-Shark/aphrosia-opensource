package draconis.handlers {
	
	/**
	 * ...
	 * Obsidian Shark...
	 */
	
	import draconis.*;
	
	public class EventHandler {
		public var currEvent:Number = 0;
		public var holdEvent:Number = 0;

		public function EventHandler() {
			// constructor code
		}
		//Start a new game... duh
		public function newGame():void {
			Core.flags.activeGame = true;
			Core.screens.game.btnInventory.visible = false;
			Core.screens.game.btnProfile.visible = false;
			Core.screens.game.btnSaveGame.visible = false;
			Core.screens.game.pcPane.visible = false;
			Core.bag.flushInven();
			Story.mainStory(1);
		}
		//Save the Player's name
		public function setPlayerName():void {
			Player.name = String(Core.screens.game.nameInput.text);
			Core.screens.game.nameInput.visible = false;
			Core.screens.game.pcPane.nameText.text = "" + Player.name + "";
		}
		//Increase Player's aggressive score
		public function addAggro():void {
			Player.aggro += 1;
			if (Player.passi == 0) Player.passi = 0;
		}
		//Increase Player's passive score... for betaness
		public function addPassi():void {
			Player.passi += 1;
			if (Player.aggro == 0) Player.aggro = 0;
		}

	}
	
}
