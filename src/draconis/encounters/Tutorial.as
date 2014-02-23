package draconis.encounters {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	import draconis.*;
	
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
		public static function load():void {
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
		public static function startText():void {
			Core.text.combatOutput("You are fighting a Mus Scavenger. The small, scrawny creature is armed with a small, crude shiv.", true);
			Core.text.combatOutput("\r\r During combat, you have several options open to you. For now, you can only use your base attack. When you attack, click the portrait of your target to deal damage.", false);
		}
		public static function defeatText():void {
			Core.text.combatOutput("Overwhelmed, the scrawny mus drops their weapon and runs off, squeaking in fear. Unfortunately, the Mus has no loot for you but, in general, the beasts and hostiles you encounter will drop money and other items.", true);
			Core.text.combatOutput("\r\rYou are free to continue on your way now.", false);
		}
	}
	
} 