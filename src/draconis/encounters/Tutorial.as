package draconis.encounters {
	
	import draconis.*;
	import draconis.Entity;
	
	public class Tutorial {
		//Stats for Mus Scavenger
		public static var str:Number = 7;
		public static var endr:Number = 5;
		public static var dex:Number = 12;
		public static var agi:Number = 12;
		public static var wis:Number = 5;
		
		public function Tutorial() {
			//constructor code
		}
		public static function load() {
			Core.combat.enemy1.name = "Mus Scavenger";
			Core.combat.enemy1.active = true;
			Core.combat.enemy1.str = str;
			Core.combat.enemy1.endr = endr;
			Core.combat.enemy1.dex = dex;
			Core.combat.enemy1.agi = agi;
			Core.combat.enemy1.wis = wis;
			Core.combat.enemy1.maxHP = Math.round(Core.combat.enemy1.endr * 2.5);
			Core.combat.enemy1.maxMP = Math.round(Core.combat.enemy1.wis * 1.5);
			Core.combat.enemy1.maxSP = Math.round(Core.combat.enemy1.str * 1.5);
			Core.combat.enemy1.HP = Core.combat.enemy1.maxHP;
			Core.combat.enemy1.MP = Core.combat.enemy1.maxMP;
			Core.combat.enemy1.SP = Core.combat.enemy1.maxSP;
			Core.combat.enemy1.lust = 0;
		}
		public static function startText() {
			Core.text.combatOutput("You are fighting a Mus Scavenger. The small, scrawny creature is armed with a small, crude shiv.", true);
			Core.text.combatOutput("\r\r During combat, you have several options open to you. For now, you can only use your base attack. When you attack, click the portrait of your target to deal damage.", false);
		}
	}
	
} 