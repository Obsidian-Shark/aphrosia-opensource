package draconis {
	
	import flash.display.MovieClip;
	import draconis.handlers.*;
	
	
	public class Core extends MovieClip {
		//Screen variables
		public static var screens:ScreenHandler = new ScreenHandler();
		public static var buttons:ButtonHandler = new ButtonHandler();
		public static var text:TextHandler = new TextHandler();
		public static var events:EventHandler = new EventHandler();
		public static var bag:BagHandler = new BagHandler();
		public static var flags:FlagHandler = new FlagHandler();
		public static var combat:CombatHandler = new CombatHandler();
		public static var gameData:SaveLoad = new SaveLoad(); 
		
		public static var debug:Boolean = false;
		public static var hardMode:Boolean = false;
		
		public static var story_Active:Boolean = false;
		
		public function Core() {
			// constructor code
			this.addChild(screens);
		}
	}
	
}
