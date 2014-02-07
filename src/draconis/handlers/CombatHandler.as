package draconis.handlers {
	
	import draconis.*;
	import draconis.Entity;
	
	public class CombatHandler 	{
		private var player:Entity = new Entity;
		private var comp1:Entity = new Entity;
		private var comp2:Entity = new Entity;
		private var enemy1:Entity = new Entity;
		private var enemy2:Entity = new Entity;
		private var enemy3:Entity = new Entity;
		private var turnOrder:Array = new Array();
		
		public function CombatHandler() {
			//constructor code
		}
		public function startFight() {
			Core.screens.switchTo("Combat");
			loadPC();
			//loadComp1();
			//loadComp2();
			//loadEnemy1();
			//loadEnemy2();
			//loadEnemy3();
			setTurns();
		}
		//Plugs in data for turn array... I think
		private function setTurns() {
			turnOrder.push(comp1);
			turnOrder.push(comp2);
			turnOrder.push(enemy1);
			turnOrder.push(enemy2);
			turnOrder.push(enemy3);
		}
		private function loadPC() {
			
			player.name = "" + Player.name + "";
			player.str = Player.str;
			player.endr = Player.endr;
			player.dex = Player.dex;
			player.agi = Player.agi;
			player.wis = Player.wis;
			player.maxHP = player.endr * 2.5;
			player.maxMP = player.wis * 1.5;
			player.maxSP = player.str * 1.5;
			player.HP = player.maxHP;
			player.MP = player.maxMP;
			player.SP = player.maxSP;
			player.lust = 0;
		}
		//Run the turn for all entities and the Player
		public function runAllTurns() {
			//Run the Player's turn
			player.runTurn();
			//Sort the arry of other entities by agility scores
			turnOrder.sort("agi");
			//Run each entities turn in the order set
			for (var i:int; i < turnOrder.length; i++) {
				turnOrder[i].runTurn();
			}
		}
	}
}