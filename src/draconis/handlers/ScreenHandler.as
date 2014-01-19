package draconis.handlers {
	
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import draconis.screens.*;
	
	public class ScreenHandler extends Sprite {
		public var main:MainMenu;
		public var game:Game;
		public var pc:Character;
		public var bag:Inventory;
		public var combat:Combat;
		public var data:GameData;
		public var credit:Credits;
		private var currScreenName:String = "";
		private var screenLayer:Sprite = new Sprite();

		public function ScreenHandler() {
			// constructor code
			this.addChild(screenLayer);
			main = new MainMenu();
			screenLayer.addChild(main);
		}
		public function switchTo(screenName:String):void {
			currScreenName = screenName;
			switchScreens();
		}
		private function switchScreens():void {
			removeOldScreen();
			loadScreen();
		}
		private function removeOldScreen():void {
			var oldScreen:MovieClip;
			oldScreen = screenLayer.getChildAt(0) as MovieClip;
			screenLayer.removeChild(oldScreen);
		}
		private function loadScreen():void {
			switch(currScreenName) {
				case "MainMenu":
					main = new MainMenu();
					screenLayer.addChild(main);
				break;
				case "Game":
					game = new Game();
					screenLayer.addChild(game);
				break;
				case "Profile":
					pc = new Character();
					screenLayer.addChild(pc);
				break;
				case "Inventory":
					bag = new Inventory();
					screenLayer.addChild(bag);
				break;
				case "Combat":
					combat = new Combat();
					screenLayer.addChild(combat);
				break;
				case "Data":
					data = new GameData();
					screenLayer.addChild(data);
				break;
				case "Credits":
					credit = new Credits();
					screenLayer.addChild(credit);
				break;						
				default:
					main = new MainMenu();
					screenLayer.addChild(main);
				break;
			}
			currScreenName = "";
		}

	}
	
}
