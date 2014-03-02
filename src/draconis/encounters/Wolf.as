package draconis.encounters {
	
	/**
	* ...
	* @author Obsidian Shark...
	*/
	
	import draconis.*;
	
	public class Wolf {
		//Stats for Wolf
		
		public function Wolf() {
			//constructor code
		}
		public static function load():void {
			//Load data into Enemy Slot 1
		}
		public static function startText():void {
			Core.text.combatOutput("", true);
		}
		public static function defeatText():void {
			Core.text.combatOutput("\r\r", false);
		}
	}