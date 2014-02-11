package draconis.encounters {
	
	import draconis.*;
	import draconis.Entity;
	
	public class Tutorial {
		//Stats for Mus Scavenger
		public static var str:Number = 10;
		public static var endr:Number = 10;
		public static var dex:Number = 12;
		public static var agi:Number = 12;
		public static var wis:Number = 5;
		
		public function Tutorial() {
			//constructor code
		}
		public static function startText() {
			Core.text.combatOutput("During a fight like this, you are able to attack using whatever you have equipped, utilize spells and skills you've learned, and escape if you find yourself overwhelmed.", true);
		}

	}
	
}