package draconis.handlers {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	import draconis.*;
	
	public class ButtonHandler {
		public var nextBtn:Boolean = false;
		//Button assignment variables
		public var btnChoice:Array = new Array();

		public function ButtonHandler() {
			// constructor code
		}
		//Load Main Menu Eventlisteners
		public  function initiMain():void {
			Core.screens.main.btnNewGame.addEventListener(MouseEvent.MOUSE_DOWN, startNewGame);
			Core.screens.main.btnDevMode.addEventListener(MouseEvent.MOUSE_DOWN, devMode);
			Core.screens.main.btnLoadGame.addEventListener(MouseEvent.MOUSE_DOWN, loadData);
			Core.screens.main.btnResume.addEventListener(MouseEvent.MOUSE_DOWN, resumeGame);
			Core.screens.main.btnCredits.addEventListener(MouseEvent.MOUSE_DOWN, credits);
		}
		//Load Game Eventlisteners
		public function initiGame():void {
			Core.screens.game.btnInventory.addEventListener(MouseEvent.MOUSE_DOWN, loadInventory);
			Core.screens.game.btnMainMenu.addEventListener(MouseEvent.MOUSE_DOWN, returnMenu);
			Core.screens.game.btnProfile.addEventListener(MouseEvent.MOUSE_DOWN, loadProfile);
			Core.screens.game.btnSaveGame.addEventListener(MouseEvent.MOUSE_DOWN, saveData);
			
			for(var i:int = 0; i < 15; i ++) {
				var btnEventHandler:Function = onClick(i)
				function onClick(btnNumber:int):Function {
					return function(e:MouseEvent):void {
						if (btnChoice[btnNumber] == 0) {
							Core.text.gameOutput("\rNo assignment.", false);
							return;
						}
						Core.events.currEvent = btnChoice[btnNumber];
						Story.mainStory(Core.events.currEvent);
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
		}
		//Load Data Screen Eventlisteners
		public function initiData():void {
			Core.screens.data.slot1Save.addEventListener(MouseEvent.MOUSE_DOWN, saveSlot1);
			Core.screens.data.slot1Load.addEventListener(MouseEvent.MOUSE_DOWN, loadSlot1);
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
		//Toggle Dev Mode
		private function devMode(e:MouseEvent):void {
			if (Core.debug) {
				Core.debug = false;
				Core.screens.main.devMode_Indc.visible = false;
				trace("Developer Mode = " +Core.debug + "");
			}
			else {
				Core.debug = true;
				Core.screens.main.devMode_Indc.visible = true;
				trace("Developer Mode = " + Core.debug + "");
			}
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
			Core.gameData.saveGame = true;
			Core.gameData.loadGame = false;
			Core.screens.switchTo("Data");
		}
		//Load Data Screen (Load a File)
		private function loadData(e:MouseEvent):void {
			Core.gameData.loadGame = true;
			Core.gameData.saveGame = false;
			Core.screens.switchTo("Data");
			trace("Load Data Screen");
		}
		//Data Slot 1
		private function saveSlot1(e:MouseEvent) {
			Core.gameData.saveData1();
			Core.gameData.saveFile1.flush();
			Core.screens.data.saveCheck.text = "Game Saved";
			trace(Core.gameData.saveFile1.data.pc_Name);
			trace(Core.gameData.saveFile1.data.currEvent);
		}
		private function loadSlot1(e:MouseEvent) {
			Core.gameData.loadData1();
			Core.screens.switchTo("Game");
			Story.mainStory(Core.events.currEvent);
		}
		//Resume Game
		private function resumeGame(e:MouseEvent):void {
			Core.screens.switchTo("Game");
			Story.mainStory(Core.events.currEvent);
		}
		//Continue Game
		private function contGame(e:MouseEvent):void {			
			Core.screens.switchTo("Game");
			if (Core.events.currEvent == 56) {
				Story.mainStory(57);
			}
		}
		//Player attacks!
		private function attack(e:MouseEvent):void {
			if (Core.combat.e2_Active) {
				//Core.combat.targetAtk();
			}
			else {
				Core.combat.pcAttack();
			}
		}
		//Open the Skill Menu
		private function skillMenu(e:MouseEvent):void {
			Core.text.combatOutput("\rYou don't have any skills!", false);
		}
		//Open the Magic Menu
		private function magicMenu(e:MouseEvent):void {
			Core.text.combatOutput("\rYou don't know any spells!", false);
		}
		//Run from the fight like a pussy
		private function runFrom(e:MouseEvent):void {
			Core.text.combatOutput("\rYou could escape... if it was allowed.", false);
		}
		
		// New master button thingy
		public function button(btnNumber:int, label:String, eventNum:Number) {
			Core.screens.game["btn" + btnNumber].visible = true;
			Core.screens.game["btn" + btnNumber].btnText.text = label;
			btnChoice[btnNumber - 1] = eventNum;
		}
						
		public function flushBtns() {
			//Reset visibility to false
			for ( var i:int = 0; i < 15; i += 1) {
				//Reset visibility to false
				Core.screens.game["btn" + (i + 1)].visible = false ;
				//Flush numbers
				btnChoice[i] = 0;
			}
		}

	}
	
}
