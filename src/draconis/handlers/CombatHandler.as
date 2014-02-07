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
			turnOrder.push(player);
			turnOrder.push(comp1);
			turnOrder.push(comp2);
			turnOrder.push(enemy1);
			turnOrder.push(enemy2);
			turnOrder.push(enemy3);
		}
		//Sets turn order in array
		public function runTurn() {
			turnOrder.sortOn("agi");
			for (var i:int; i < turnOrder.length; i++) {
				turnOrder[i].runTurn();
			}
		}
		private function loadPC() {
			player.name = "" + Player.name + "";
			player.str = Player.str;
			player.endr = Player.endr;
			player.dex = Player.dex;
			player.agi = Player.agi;
			player.wis = Player.wis;
			player.maxHP = entity.endr * 2.5;
			player.maxMP = entity.wis * 1.5;
			player.maxSP = entity.str * 1.5;
			player.HP = entity.maxHP;
			player.MP = entity.maxMP;
			player.SP = entity.maxSP;
			player.lust = 0;
		}
	}
}