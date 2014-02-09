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
			Core.text.combatOutput("When in a fight, you will always attack first. You possess a basic attack with whatever weapon you have or using your fists. You will, eventually, learn different skills and spells to help you as well as bring Companions into a fight alongside you. Enemies will also spawn in groups. If you are overwhelmed, you'll often have the option to escape.", true);
		}

	}
	
}