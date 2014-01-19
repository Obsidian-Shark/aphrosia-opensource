package draconis.handlers {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	import draconis.*;
	
	public class ButtonHandler {
		public var nextBtn:Boolean = false;
		//Button assignment variables
		public var btn1Choice:Number = 0;
		public var btn2Choice:Number = 0;
		public var btn3Choice:Number = 0;
		public var btn4Choice:Number = 0;
		public var btn5Choice:Number = 0;
		public var btn6Choice:Number = 0;
		public var btn7Choice:Number = 0;
		public var btn8Choice:Number = 0;
		public var btn9Choice:Number = 0;
		public var btn10Choice:Number = 0;
		public var btn11Choice:Number = 0;
		public var btn12Choice:Number = 0;
		public var btn13Choice:Number = 0;
		public var btn14Choice:Number = 0;
		public var btn15Choice:Number = 0;
		public var contBtnChoice:Number = 0;

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
			Core.screens.game.btn1.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent1);
			Core.screens.game.btn2.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent2);
			Core.screens.game.btn3.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent3);
			Core.screens.game.btn4.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent4);
			Core.screens.game.btn5.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent5);
			Core.screens.game.btn6.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent6);
			Core.screens.game.btn7.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent7);
			Core.screens.game.btn8.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent8);
			Core.screens.game.btn9.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent9);
			Core.screens.game.btn10.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent10);
			Core.screens.game.btn11.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent11);
			Core.screens.game.btn12.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent12);
			Core.screens.game.btn13.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent13);
			Core.screens.game.btn14.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent14);
			Core.screens.game.btn15.addEventListener(MouseEvent.MOUSE_DOWN, btnEvent15);
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
		//Master button thingy...
		public function button1(label:String, eventNum:Number) {
			Core.screens.game.btn1.visible = true;
			Core.screens.game.btn1.btnText.text = label;
			btn1Choice = eventNum;
		}
		public function button2(label:String, eventNum:Number) {
			Core.screens.game.btn2.visible = true;
			Core.screens.game.btn2.btnText.text = label;
			btn2Choice = eventNum;
		}
		public function button3(label:String, eventNum:Number) {
			Core.screens.game.btn3.visible = true;
			Core.screens.game.btn3.btnText.text = label;
			btn3Choice = eventNum;
		}
		public function button4(label:String, eventNum:Number) {
			Core.screens.game.btn4.visible = true;
			Core.screens.game.btn4.btnText.text = label;
			btn4Choice = eventNum;
		}
		public function button5(label:String, eventNum:Number) {
			Core.screens.game.btn5.visible = true;
			Core.screens.game.btn5.btnText.text = label;
			btn5Choice = eventNum;
		}
		public function button6(label:String, eventNum:Number) {
			Core.screens.game.btn6.visible = true;
			Core.screens.game.btn6.btnText.text = label;
			btn6Choice = eventNum;
		}
		public function button7(label:String, eventNum:Number) {
			Core.screens.game.btn7.visible = true;
			Core.screens.game.btn7.btnText.text = label;
			btn7Choice = eventNum;
		}
		public function button8(label:String, eventNum:Number) {
			Core.screens.game.btn8.visible = true;
			Core.screens.game.btn8.btnText.text = label;
			btn8Choice = eventNum;
		}
		public function button9(label:String, eventNum:Number) {
			Core.screens.game.btn9.visible = true;
			Core.screens.game.btn9.btnText.text = label;
			btn9Choice = eventNum;
		}
		public function button10(label:String, eventNum:Number) {
			Core.screens.game.btn10.visible = true;
			Core.screens.game.btn10.btnText.text = label;
			btn10Choice = eventNum;
		}
		public function button11(label:String, eventNum:Number) {
			Core.screens.game.btn11.visible = true;
			Core.screens.game.btn11.btnText.text = label;
			btn11Choice = eventNum;
		}
		public function button12(label:String, eventNum:Number) {
			Core.screens.game.btn12.visible = true;
			Core.screens.game.btn12.btnText.text = label;
			btn12Choice = eventNum;
		}
		public function button13(label:String, eventNum:Number) {
			Core.screens.game.btn13.visible = true;
			Core.screens.game.btn13.btnText.text = label;
			btn13Choice = eventNum;
		}
		public function button14(label:String, eventNum:Number) {
			Core.screens.game.btn14.visible = true;
			Core.screens.game.btn14.btnText.text = label;
			btn14Choice = eventNum;
		}
		public function button15(label:String, eventNum:Number) {
			Core.screens.game.btn15.visible = true;
			Core.screens.game.btn15.btnText.text = label;
			btn15Choice = eventNum;
		}
		//Button Controls
		//This shit needs to be more efficent cause it's pissing me off to have to directly assign numbers and text
		private function btnEvent1(e:MouseEvent):void {
			if (btn1Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn1Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent2(e:MouseEvent):void {
			if (btn2Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn2Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent3(e:MouseEvent) {
			if(btn3Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn3Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent4(e:MouseEvent) {
			if (btn4Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn4Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent5(e:MouseEvent) {
			if (btn5Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn5Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent6(e:MouseEvent) {
			if (btn6Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn6Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent7(e:MouseEvent) {
			if (btn7Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn7Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent8(e:MouseEvent) {
			if (btn8Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn8Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent9(e:MouseEvent) {
			if (btn9Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn9Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent10(e:MouseEvent) {
			if (btn10Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn10Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent11(e:MouseEvent) {
			if (btn11Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn11Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent12(e:MouseEvent) {
			if (btn12Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn12Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent13(e:MouseEvent) {
			if (btn13Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn13Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent14(e:MouseEvent) {
			if (btn14Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn14Choice;
			Story.mainStory(Core.events.currEvent);
		}
		private function btnEvent15(e:MouseEvent) {
			if (btn15Choice == 0) {
				Core.text.gameOutput("\rNo assignment.", false);
				return;
			}
			Core.events.currEvent = btn15Choice;
			Story.mainStory(Core.events.currEvent);
		}
		public function flushBtns() {
			//Reset visibility to false
			Core.screens.game.btn1.visible = false;
			Core.screens.game.btn2.visible = false;
			Core.screens.game.btn3.visible = false;
			Core.screens.game.btn4.visible = false;
			Core.screens.game.btn5.visible = false;
			Core.screens.game.btn6.visible = false;
			Core.screens.game.btn7.visible = false;
			Core.screens.game.btn8.visible = false;
			Core.screens.game.btn9.visible = false;
			Core.screens.game.btn10.visible = false;
			Core.screens.game.btn11.visible = false;
			Core.screens.game.btn12.visible = false;
			Core.screens.game.btn13.visible = false;
			Core.screens.game.btn14.visible = false;
			Core.screens.game.btn15.visible = false;
			//Flush numbers
			Core.buttons.btn1Choice = 0;
			Core.buttons.btn2Choice = 0;
			Core.buttons.btn3Choice = 0;
			Core.buttons.btn4Choice = 0;
			Core.buttons.btn5Choice = 0;
			Core.buttons.btn6Choice = 0;
			Core.buttons.btn7Choice = 0;
			Core.buttons.btn8Choice = 0;
			Core.buttons.btn9Choice = 0;
			Core.buttons.btn10Choice = 0;
			Core.buttons.btn11Choice = 0;
			Core.buttons.btn12Choice = 0;
			Core.buttons.btn13Choice = 0;
			Core.buttons.btn14Choice = 0;
			Core.buttons.btn15Choice = 0;
		}

	}
	
}
