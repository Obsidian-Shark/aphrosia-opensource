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
			Core.text.combatOutput("You are fighting a Mus Scavenger. The small, scrawny creature is armed with a small, crude shiv.", true);
			Core.text.combatOutput("\r\r During combat, you have several options open to you. For now, you can only use your base attack. When you attack, click the portrait of your target to deal damage.", false);
		}
		public static function attackText() {
			Core.text.combatOutput("\r\rThe Mus flails as it lunges at you, shiv cutting you deep enough to draw a serious amount of blood from several cuts.", false);
		}
	}
	
} 