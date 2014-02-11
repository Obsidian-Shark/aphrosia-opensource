package draconis {
	import draconis.*;
	

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
			
		}
		public function attack(target:Entity) {
			if (target == Core.combat.enemy1) {
				Core.text.combatOutput("\rYou attack " + Core.combat.enemy1.name + "!", false);
				Core.combat.player.dealDamage(Core.combat.player.str, Core.combat.enemy1);
			}
			
		}
		private function dealDamage(amount:Number, target:Entity) {
			if (target == Core.combat.enemy1) {
				Core.combat.enemy1.HP -= amount;
				Core.text.combatOutput("\rYou deal " + amount + " points of damage.", false);
				Core.combat.refresh();
			}
			
		}
	}
	
}