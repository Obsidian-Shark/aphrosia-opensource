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
		//Runs Entity's turn
		public function runTurn():void {
			this.attack(Core.combat.player);
		}
		public function attack(target:Entity):void {
			Core.text.combatOutput("\r"+this.name + " attacks " + target.name + "!", false);
			this.dealDamage(this.str, target);			
		}
		public function pcAttack(target:Entity):void {
			Core.text.combatOutput("\r" + Core.combat.player.name + " attacks " + target.name + "!", false);
			Core.combat.player.dealDamage(Core.combat.player.str, target);
			Core.combat.runAllTurns();
		}
		private function dealDamage(amount:Number, target:Entity) {
			target.HP -= amount;
			Core.text.combatOutput("\r" + target.name + " takes " + amount + " points of damage.", false);
			Core.combat.refresh();
		}
	}
	
}