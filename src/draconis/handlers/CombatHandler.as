package draconis.handlers {
	
	import draconis.*;
	import draconis.Entity;
	import draconis.encounters.*;
	
	public class CombatHandler 	{
		public var player:Entity = new Entity;
		private var comp1:Entity = new Entity;
		private var comp2:Entity = new Entity;
		public var enemy1:Entity = new Entity;
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
		}
		//Plugs in data for turn array... I think
		private function setTurns() {
			if(Core.combat.comp1.active) turnOrder.push(comp1);
			if(Core.combat.comp2.active) turnOrder.push(comp2);
			if (Core.combat.enemy1.active) turnOrder.push(enemy1);
			if (Core.combat.enemy2.active) turnOrder.push(enemy2);
			if(Core.combat.enemy3.active) turnOrder.push(enemy3);
		}
		private function loadPC() {
			player.name = "" + Player.name + "";
			player.active = true;
			player.str = Player.str;
			player.endr = Player.endr;
			player.dex = Player.dex;
			player.agi = Player.agi;
			player.wis = Player.wis;
			player.maxHP = Math.round(player.endr * 2.5);
			player.maxMP = Math.round(player.wis * 1.5);
			player.maxSP = Math.round(player.str * 1.5);
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
					Tutorial.load();
					loadEPane1();
					Tutorial.startText();
					setTurns();
				break;
			}
			encounter = "";
		}
		//Run the turn for all entities... minus the Player.
		public function runAllTurns() {
			//Sort the arry of other entities by agility scores
			turnOrder.sortOn("agi", Array.DESCENDING | Array.NUMERIC);
			//Run each entities turn in the order set
			for (var i:int; i < turnOrder.length; i++) {
				turnOrder[i].runTurn();
			}
		}
		private function loadEPane1() {
			Core.screens.combat.e1Pane.Name.text = "" + enemy1.name + "";
			Core.screens.combat.e1Pane.currHP.text = "" + enemy1.HP + "";
			Core.screens.combat.e1Pane.currMP.text = "" + enemy1.MP + "";
			Core.screens.combat.e1Pane.currSP.text = "" + enemy1.SP + "";
			Core.screens.combat.e1Pane.visible = true;
		}
		public function refresh() {
			if (Core.combat.player.HP < 0) {
				Core.combat.player.HP = 0;
				//playerDefeat();
			}
			if (Core.combat.enemy1.HP < 0) {
				Core.combat.enemy1.HP = 0;
				//enemy1Defeat();
			}
			Core.screens.combat.pcPane.currHP.text = "" + Core.combat.player.HP + "";
			Core.screens.combat.e1Pane.currHP.text = "" + Core.combat.enemy1.HP + "";
		}
	}
}