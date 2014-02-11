package draconis.handlers {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	import draconis.*;
	import draconis.locations.city.*;
	
	public class ButtonHandler {
		//Button assignment variables
		//Array now handles all the button number assignments [Void Director]
		public var btnChoice:Array = new Array();

		public function ButtonHandler() {
			// constructor code
		}
		//Load Main Menu Eventlisteners
		public function initiMain():void {
			Core.screens.main.btnNewGame.addEventListener(MouseEvent.MOUSE_DOWN, startNewGame);
			//Core.screens.main.btnLoadGame.addEventListener(MouseEvent.MOUSE_DOWN, loadData);
			Core.screens.main.btnResume.addEventListener(MouseEvent.MOUSE_DOWN, resumeGame);
			Core.screens.main.btnCredits.addEventListener(MouseEvent.MOUSE_DOWN, credits);
		}
		//Load Game Eventlisteners
		public function initiGame():void {
			Core.screens.game.btnInventory.addEventListener(MouseEvent.MOUSE_DOWN, loadInventory);
			Core.screens.game.btnMainMenu.addEventListener(MouseEvent.MOUSE_DOWN, returnMenu);
			Core.screens.game.btnProfile.addEventListener(MouseEvent.MOUSE_DOWN, loadProfile);
			//Core.screens.game.btnSaveGame.addEventListener(MouseEvent.MOUSE_DOWN, saveData);
			//Loop that assigns eventlistner to the assigned button(s) [Void Director]
			for (var i:int = 0; i < 15; i ++) {
				var btnEventHandler:Function = onClick(i)
				function onClick(btnNumber:int):Function {
					return function(e:MouseEvent):void {
						if (btnChoice[btnNumber] == 0) {
							Core.text.gameOutput("\rNo assignment.", false);
							return;
						}
						Core.events.currEvent = btnChoice[btnNumber];
						if(Core.flags.loc_tyrRuins) TyrRuins.tyrRuins(Core.events.currEvent);
						else Story.mainStory(Core.events.currEvent);
					};
				}
				Core.screens.game["btn" + (i + 1)].addEventListener(MouseEvent.MOUSE_DOWN, btnEventHandler);
			}
		}
		//Load Inventory Eventlisteners
		public function initiInven():void {
			Core.screens.bag.btnReturn.addEventListener(MouseEvent.MOUSE_DOWN, resumeGame);
		}
		//Load Profile Eventlisteners
		public function initiProfile():void {
			Core.screens.pc.btnReturn.addEventListener(MouseEvent.MOUSE_DOWN, resumeGame);
		}
		//Load Combat Eventlisteners
		public function initiCombat():void {
			Core.screens.combat.btnAttack.addEventListener(MouseEvent.MOUSE_DOWN, attack);
			Core.screens.combat.btnSkills.addEventListener(MouseEvent.MOUSE_DOWN, skillMenu);
			Core.screens.combat.btnMagic.addEventListener(MouseEvent.MOUSE_DOWN, magicMenu);
			Core.screens.combat.btnEscape.addEventListener(MouseEvent.MOUSE_DOWN, runFrom);
			Core.screens.combat.btnContinue.addEventListener(MouseEvent.MOUSE_DOWN, contGame);
			Core.screens.combat.e1Target.addEventListener(MouseEvent.MOUSE_DOWN, target);
		}
		//Load Data Screen Eventlisteners
		public function initiData():void {
			//Core.screens.data.slot1Save.addEventListener(MouseEvent.MOUSE_DOWN, saveSlot1);
			//Core.screens.data.slot1Load.addEventListener(MouseEvent.MOUSE_DOWN, loadSlot1);
			Core.screens.data.btnResume.addEventListener(MouseEvent.MOUSE_DOWN, resumeGame);
			Core.screens.data.btnMenu.addEventListener(MouseEvent.MOUSE_DOWN, returnMenu);
		}
		//Load Credits Screen Eventlisteners
		public function initCredit():void {
			Core.screens.credit.btnMenu.addEventListener(MouseEvent.MOUSE_DOWN, returnMenu);
		}
		//Start a New Game
		private function startNewGame(e:MouseEvent):void {
			Core.screens.switchTo("Game");
			Core.events.newGame();
			trace("New Game started");
		}
		//Return to Main Menu
		private function returnMenu(e:MouseEvent):void {
			Core.screens.switchTo("MainMenu");
			trace("Return to Main Menu");
		}
		//Load Credits Screen
		private function credits(e:MouseEvent):void {
			Core.screens.switchTo("Credits")
			trace("Load game credits");
		}
		//Load Character Profile Screen
		private function loadProfile(e:MouseEvent):void {
			Core.screens.switchTo("Profile");
			trace("Load Character Profile");
			trace(Core.events.holdEvent);
		}
		//Load Inventory Screen
		private function loadInventory(e:MouseEvent):void {
			Core.screens.switchTo("Inventory");
			trace("Load Inventory");
		}
		//Load Data Screen (Save a File)
		private function saveData(e:MouseEvent):void {
			Core.screens.switchTo("Data");
		}
		//Load Data Screen (Load a File)
		private function loadData(e:MouseEvent):void {
			Core.screens.switchTo("Data");
			trace("Load Data Screen");
		}
		//Data Slot 1
		private function saveSlot1(e:MouseEvent) {
			
		}
		private function loadSlot1(e:MouseEvent) {
			
		}
		//Resume Game
		private function resumeGame(e:MouseEvent):void {
			Core.screens.switchTo("Game");
			Story.mainStory(Core.events.currEvent);
		}
		//Continue Game
		private function contGame(e:MouseEvent):void {			
			
		}
		//Player attacks!
		private function attack(e:MouseEvent):void {
			Core.text.combatOutput("Who do you wish to target?", true);
		}
		//Open the Skill Menu
		private function skillMenu(e:MouseEvent):void {
			Core.text.combatOutput("\rNo skills available.", false);
		}
		//Open the Magic Menu
		private function magicMenu(e:MouseEvent):void {
			Core.text.combatOutput("\rNo spells available.", false);
		}
		//Run from the fight like a pussy
		private function runFrom(e:MouseEvent):void {
			Core.text.combatOutput("\rYou cannot flee... coward.", false);
		}
		//Player selects a target
		private function target(e:MouseEvent):void {
			if (e.target == Core.screens.combat.e1Target) Core.combat.player.attack(Core.combat.enemy1);
			//if (e.target == Core.screens.combat.e2Pane) Core.combat.player.attack(Core.combat.enemy2);
			//if (e.target == Core.screens.combat.e3Pane) Core.combat.player.attack(Core.combat.enemy3);
		}
		//Master button assign thingy ma-jig
		//Writes text label for button, assigns the appropriate event number, and uses btnNumber to identify which button in the display to use [Void Director]
		public function button(btnNumber:int, label:String, eventNum:Number) {
			Core.screens.game["btn" + btnNumber].visible = true;
			Core.screens.game["btn" + btnNumber].btnText.text = label;
			btnChoice[btnNumber - 1] = eventNum;
		}
		//New button flush function [Void Director]
		public function flushBtns() {
			for ( var i:int = 0; i < 15; i += 1) {
				//Default button visibility back to false
				Core.screens.game["btn" + (i + 1)].visible = false;
				//Flush the assigned number values
				btnChoice[i] = 0;
			}
		}

	}
	
}
