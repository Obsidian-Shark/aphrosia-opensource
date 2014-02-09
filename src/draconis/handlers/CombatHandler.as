package draconis.handlers {
	
	import draconis.*;
	import draconis.Entity;
	import draconis.encounters.*;
	
	public class CombatHandler 	{
		public var player:Entity = new Entity;
		private var comp1:Entity = new Entity;
		private var comp2:Entity = new Entity;
		private var enemy1:Entity = new Entity;
		private var enemy2:Entity = new Entity;
		private var enemy3:Entity = new Entity;
		private var turnOrder:Array = new Array();
		public var encounter:String = "";
		
		public function CombatHandler() {
			//constructor code
		}
		public function startFight(encount:String) {
			encounter = encount;
			Core.screens.switchTo("Combat");
			loadPC();
			loadEncounter();
			setTurns();
			runAllTurns();
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
			Core.screens.combat.pcPane.Name.text = "" + player.name + "";
			Core.screens.combat.pcPane.currHP.text = "" + player.HP + "";
			Core.screens.combat.pcPane.currMP.text = "" + player.MP + "";
			Core.screens.combat.pcPane.currSP.text = "" + player.SP + "";
			Core.screens.combat.pcPane.visible = true;
		}
		private function loadEncounter() {
			//flushEncountData();
			switch(encounter) {
				case "Tutorial":
					enemy1.name = "Mus Scavenger";
					enemy1.str = Tutorial.str;
					enemy1.endr = Tutorial.endr;
					enemy1.dex = Tutorial.dex;
					enemy1.agi = Tutorial.agi;
					enemy1.wis = Tutorial.wis;
					enemy1.maxHP = enemy1.endr * 2.5;
					enemy1.maxMP = enemy1.wis * 1.5;
					enemy1.maxSP = enemy1.str * 1.5;
					enemy1.HP = enemy1.maxHP;
					enemy1.MP = enemy1.maxMP;
					enemy1.SP = enemy1.maxSP;
					enemy1.lust = 0;
					Core.screens.combat.e1Pane.Name.text = "" + enemy1.name + "";
					Core.screens.combat.e1Pane.currHP.text = "" + enemy1.HP + "";
					Core.screens.combat.e1Pane.currMP.text = "" + enemy1.MP + "";
					Core.screens.combat.e1Pane.currSP.text = "" + enemy1.SP + "";
					Core.screens.combat.e1Pane.visible = true;
					Tutorial.startText();
				break;
			}
			encounter = "";
		}
		//Run the turn for all entities and the Player
		public function runAllTurns() {
			//Run the Player's turn
			player.runTurn();
			//Sort the arry of other entities by agility scores
			turnOrder.sortOn("agi", Array.DESCENDING | Array.NUMERIC);
			//Run each entities turn in the order set
			for (var i:int; i < turnOrder.length; i++) {
				turnOrder[i].runTurn();
			}
		}
		public function playerAttack() {
			player.attack(enemy1);
			Core.text.combatOutput("You attack the " + enemy1.name + "!", true);
		}
	}
}