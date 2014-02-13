package draconis {
	
	import draconis.*;
	import draconis.encounters.*;
	

	dynamic public class Entity	{
		public var active:Boolean = false;
		public var name:String = "";
		public var maxHP:Number = 0;
		public var maxMP:Number = 0;
		public var maxSP:Number = 0;
		public var HP:Number = 0;
		public var MP:Number = 0;
		public var SP:Number = 0;
		public var str:Number = 0;
		public var endr:Number = 0;
		public var dex:Number = 0;
		public var agi:Number = 0;
		public var wis:Number = 0;
		public var lust:Number = 0;
		
		public function Entity() {
			//constructor code
		}
		//Sets turn order in array
		public function runTurn() {
			attack(Core.combat.player);
		}
		public function attack(target:Entity) {
			if (target == Core.combat.player) {
				Core.combat.enemy1.dealDamage(Core.combat.enemy1.str, Core.combat.player);
				if (Core.combat.encounter == "Tutorial") {
					Tutorial.attackText();
				}
			}
			else if (target == Core.combat.enemy1) {
				Core.combat.player.dealDamage(Core.combat.player.str, Core.combat.enemy1);
			}
		}
		private function dealDamage(amount:Number, target:Entity) {
			if (target == Core.combat.player) {
				Core.combat.player.HP -= amount;
				Core.text.combatOutput("\rYou take " + amount + " points of damage.", false);
			}
			else if (target == Core.combat.enemy1) {
				Core.combat.enemy1.HP -= amount;
				Core.text.combatOutput("\r" + Core.combat.enemy1.name + " takes " + amount + " points of damage.", false);
				Core.combat.runAllTurns();
			}
			Core.combat.refresh();
		}
	}
	
}