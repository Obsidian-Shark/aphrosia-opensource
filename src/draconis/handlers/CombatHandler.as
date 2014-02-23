package draconis.handlers {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 * @author Void Director...
	 */
	
	import draconis.*;;
	import draconis.encounters.*;
	import flash.net.drm.VoucherAccessInfo;
	
	public class CombatHandler 	{
		public var player:Entity = new Entity;
		public var comp1:Entity = new Entity;
		public var comp2:Entity = new Entity;
		public var enemy1:Entity = new Entity;
		public var enemy2:Entity = new Entity;
		public var enemy3:Entity = new Entity;
		private var turnOrder:Array = new Array();
		public var encounter:String = "";
		
		public function CombatHandler() {
			//constructor code
		}
		//Initiate and set-up encounter
		public function startFight(encount:String): void {
			encounter = encount;
			Core.screens.switchTo("Combat");
			loadPC();
			loadEncounter();
		}
		//Plugs in data for turn array... I think
		private function setTurns():void {
			if(Core.combat.comp1.active) turnOrder.push(comp1);
			if(Core.combat.comp2.active) turnOrder.push(comp2);
			if (Core.combat.enemy1.active) turnOrder.push(enemy1);
			if (Core.combat.enemy2.active) turnOrder.push(enemy2);
			if(Core.combat.enemy3.active) turnOrder.push(enemy3);
		}
		private function loadPC():void {
			player.name = "" + Core.pc.name + "";
			player.active = true;
			player.str = Core.pc.str;
			player.endr = Core.pc.endr;
			player.dex = Core.pc.dex;
			player.agi = Core.pc.agi;
			player.wis = Core.pc.wis;
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
		private function loadEncounter():void {
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
		public function runAllTurns():void {
			//Sort the arry of other entities by agility scores
			turnOrder.sortOn("agi", Array.DESCENDING | Array.NUMERIC);
			//Run each entities turn in the order set
			for (var i:int; i < turnOrder.length; i++) {
				turnOrder[i].runTurn();
			}
		}
		private function loadEPane1():void {
			Core.screens.combat.e1Pane.Name.text = "" + enemy1.name + "";
			Core.screens.combat.e1Pane.currHP.text = "" + enemy1.HP + "";
			Core.screens.combat.e1Pane.currMP.text = "" + enemy1.MP + "";
			Core.screens.combat.e1Pane.currSP.text = "" + enemy1.SP + "";
			Core.screens.combat.e1Pane.visible = true;
		}
		public function refresh():void {
			if (Core.combat.player.HP < 0) {
				Core.combat.player.HP = 0;
				gameOver();
			}
			if (Core.combat.enemy1.HP < 0) {
				Core.combat.enemy1.HP = 0;
				enemyDefeat();
			}
			Core.screens.combat.pcPane.currHP.text = "" + Core.combat.player.HP + "";
			Core.screens.combat.e1Pane.currHP.text = "" + Core.combat.enemy1.HP + "";
		}
		//Enemy is defeated and removed from turnOrder array
		private function enemyDefeat():void {
			if (Core.combat.enemy1.HP == 0) {
				Core.combat.turnOrder.splice(enemy1);
			}
			if (Core.combat.enemy2.HP == 0) {
				Core.combat.turnOrder.splice(enemy2);
			}
			if (Core.combat.enemy3.HP == 0) {
				Core.combat.turnOrder.splice(enemy3);
			}
		}
		//Companion is defeated and removed from turnOrder array
		private function compDefeat():void {
			if (Core.combat.comp1.HP == 0) {
				Core.combat.turnOrder.splice(comp1);
			}
			if (Core.combat.comp2.HP == 0) {
				Core.combat.turnOrder.splice(comp2);
			}
		}
		//Player is defeated... trigger game over
		private function gameOver():void {
			
		}
		//Search turnOrder for enemy turns or not
		//if there are no enemies in the turnOrder, the encounter is over
		private function searchTurns(check:String):Boolean {
			for (var i:int = 0; i < turnOrder.length; i++) {
				if (turnOrder[i].indexOf(check) > -1) {
					return true;
					//if true, continue combat
				}
			}
			//if false, trigger the end of combat
			return false;
			endCombat();
		}
		private function endCombat():void {
			if (Core.combat.encounter == "Tutorial") {
				Tutorial.defeatText();
			}
		}
	}
}