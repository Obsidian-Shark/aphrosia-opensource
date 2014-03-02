package draconis {
	
		/**
	 * ...
	 * @author Obsidian Shark
	 */
	
	import flash.display.MovieClip;
	import draconis.*;
	import draconis.handlers.*;
	
	
	public class Core extends MovieClip {
		//Screen variables
		public static var bag:BagHandler = new BagHandler();
		public static var buttons:ButtonHandler = new ButtonHandler();
		public static var combat:CombatHandler = new CombatHandler();
		public static var container:ContainerHandler = new ContainerHandler();
		public static var events:EventHandler = new EventHandler();
		public static var flags:FlagHandler = new FlagHandler();
		public static var gameData:SaveLoad = new SaveLoad();
		public static var pc:Player = new Player();
		public static var screens:ScreenHandler = new ScreenHandler();
		public static var text:TextHandler = new TextHandler();
				
		public function Core() {
			// constructor code
			this.addChild(screens);
		}
	}
	
}
