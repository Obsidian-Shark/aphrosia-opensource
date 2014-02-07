package draconis.screens {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import draconis.*;
	
	import draconis.*;
	
	public class Game extends MovieClip {
		
		
		public function Game() {
			// constructor code
			this.addEventListener(Event.ADDED_TO_STAGE, initialize);
			refreshScreen();
		}
		private function initialize(e:Event):void {
			Core.flags.activeGame = true;
			pcPane.nameText.text = "" +Player.name + "";
			pcPane.level.text = "" + Player.lvl +"";
			pcPane.exp.text = "" + Player.exp + "";
			//Toggle console input
			//New structure for hacking/cheating the game will be implemented... later
			//Name input field
			nameInput.visible = false;
			//Deactivate button textfields
			btnProfile.btnText.mouseEnabled = false;
			btnInventory.btnText.mouseEnabled = false;
			btnSaveGame.btnText.mouseEnabled = false;
			btnMainMenu.btnText.mouseEnabled = false;
			btn1.btnText.mouseEnabled = false;
			btn2.btnText.mouseEnabled = false;
			btn3.btnText.mouseEnabled = false;
			btn4.btnText.mouseEnabled = false;
			btn5.btnText.mouseEnabled = false;
			btn6.btnText.mouseEnabled = false;
			btn7.btnText.mouseEnabled = false;
			btn8.btnText.mouseEnabled = false;
			btn9.btnText.mouseEnabled = false;
			btn10.btnText.mouseEnabled = false;
			btn11.btnText.mouseEnabled = false;
			btn12.btnText.mouseEnabled = false;
			btn13.btnText.mouseEnabled = false;
			btn14.btnText.mouseEnabled = false;
			btn15.btnText.mouseEnabled = false;
			//Set default button labels
			btnProfile.btnText.text = "Profile";
			btnInventory.btnText.text = "Inventory";
			btnSaveGame.btnText.text = "Save Game";
			btnMainMenu.btnText.text = "Main Menu";
			btn1.btnText.text = "Button 1";
			btn2.btnText.text = "Button 2";
			btn3.btnText.text = "North";
			btn4.btnText.text = "Button 4";
			btn5.btnText.text = "Button 5";
			btn6.btnText.text = "Button 6";
			btn7.btnText.text = "West";
			btn8.btnText.text = "Button 8";
			btn9.btnText.text = "East";
			btn10.btnText.text = "Button 10";
			btn11.btnText.text = "Button 11";
			btn12.btnText.text = "Button 12";
			btn13.btnText.text = "South";
			btn14.btnText.text = "Button 14";
			btn15.btnText.text = "Button 15";
			//Default button visibility
			btnProfile.visible = true;
			btnInventory.visible = true;
			btnSaveGame.visible = true;
			btnMainMenu.visible = true;
			Core.buttons.initiGame();
		}
		public function refreshScreen() {
			pcPane.level.text = "" + Player.lvl + "";
			pcPane.exp.text = "" +Player.exp + "";
		}
		
	}
	
}
