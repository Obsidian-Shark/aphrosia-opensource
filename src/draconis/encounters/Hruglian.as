package draconis.encounters {
	
	/**
	* ...
	* @author Obsidian Shark...
	*/
	
	import draconis.*;
	
	public class Hruglian {
		//Stats for Hruglian
		
		public function Hruglian() {
			//constructor code
		}
		public static funciton load():void {
			//Load data into Enemy Slot 1
		}
		public static function startText():void {
			Core.text.combatOutput("", true);
		}
		public static function defeatText():void {
			Core.text.combatOutput("\r\r", false);
		}
	}