package draconis.handlers {
	
	import draconis.*;
	import draconis.companions.*;
	
	public class CombatHandler 	{
		//Player Info
		private var pc_MaxHP:Number = 0;
		private var pc_MaxMP:Number = 0;
		private var pc_MaxSP:Number = 0;
		public var pc_HP:Number = 0;
		public var pc_MP:Number = 0;
		public var pc_SP:Number = 0;
		private var pc_Str:Number = 0;
		private var pc_Endr:Number = 0;
		private var pc_Dex:Number = 0;
		private var pc_Agi:Number = 0;
		private var pc_Wis:Number = 0;
		private var pc_Lust:Number = 0;
		private var pc_Dodge:Number = 0;
		private var pc_Turn:Number = 0;
		//Companion 1 Info
		public var comp1_Active:Boolean = false;
		public var comp1_Name:String = "";
		private var comp1_MaxHP:Number = 0;
		private var comp1_MaxMP:Number = 0;
		private var comp1_MaxSP:Number = 0;
		public var comp1_HP:Number = 0;
		public var comp1_MP:Number = 0;
		public var comp1_SP:Number = 0;
		private var comp1_Str:Number = 0;
		private var comp1_Endr:Number = 0;
		private var comp1_Dex:Number = 0;
		private var comp1_Agi:Number = 0;
		private var comp1_Wis:Number = 0;
		private var comp1_Lust:Number = 0;
		private var comp1_Dodge:Number = 0;
		//Companion 2 Info
		public var comp2_Active:Boolean = false;
		public var comp2_Name:String = "";
		private var comp2_MaxHP:Number = 0;
		private var comp2_MaxMP:Number = 0;
		private var comp2_MaxSP:Number = 0;
		public var comp2_HP:Number = 0;
		public var comp2_MP:Number = 0;
		public var comp2_SP:Number = 0;
		private var comp2_Str:Number = 0;
		private var comp2_Endr:Number = 0;
		private var comp2_Dex:Number = 0;
		private var comp2_Agi:Number = 0;
		private var comp2_Wis:Number = 0;
		private var comp2_Lust:Number = 0
		private var comp2_Dodge:Number = 0;
		//Enemy 1 Info
		public var e1_Name:String = "";
		private var e1_MaxHP:Number = 0;
		private var e1_MaxMP:Number = 0;
		private var e1_MaxSP:Number = 0;
		public var e1_HP:Number = 0;
		public var e1_MP:Number = 0;
		public var e1_SP:Number = 0;
		private var e1_Str:Number = 0;
		private var e1_Endr:Number = 0;
		private var e1_Dex:Number = 0;
		private var e1_Agi:Number = 0;
		private var e1_Wis:Number = 0;
		private var e1_Lust:Number = 0;
		private var e1_Dodge:Number = 0;
		private var e1_Turn:Number = 0;
		//Enemy 2 Info
		public var e2_Active:Boolean = false;
		public var e2_Name:String = "";
		private var e2_MaxHP:Number = 0;
		private var e2_MaxMP:Number = 0;
		private var e2_MaxSP:Number = 0;
		public var e2_HP:Number = 0;
		public var e2_MP:Number = 0;
		public var e2_SP:Number = 0;
		private var e2_Str:Number = 0;
		private var e2_Endr:Number = 0;
		private var e2_Dex:Number = 0;
		private var e2_Agi:Number = 0;
		private var e2_Wis:Number = 0;
		private var e2_Lust:Number = 0;
		private var e2_Dodge:Number = 0;
		//Enemy 3 Info
		public var e3_Active:Boolean = false;
		public var e3_Name:String = "";
		private var e3_MaxHP:Number = 0;
		private var e3_MaxMP:Number = 0;
		private var e3_MaxSP:Number = 0;
		public var e3_HP:Number = 0;
		public var e3_MP:Number = 0;
		public var e3_SP:Number = 0;
		private var e3_Str:Number = 0;
		private var e3_Endr:Number = 0;
		private var e3_Dex:Number = 0;
		private var e3_Agi:Number = 0;
		private var e3_Wis:Number = 0;
		private var e3_Lust:Number = 0;
		private var e3_Dodge:Number = 0;
		
		public function CombatHandler() {
			//constructor code
			
		}
		public function loadPlayer():void {
			pc_MaxHP = Player.HP;
			pc_MaxMP = Player.MP;
			pc_MaxSP = Player.SP;
			pc_HP = pc_MaxHP;
			pc_MP = pc_MaxMP;
			pc_SP = pc_MaxSP
			pc_Str = Player.str;
			pc_Endr = Player.endr;
			pc_Dex = Player.dex;
			pc_Agi = Player.agi;
			pc_Wis = Player.wis;
			pc_Lust = 0;
			pc_Turn = 1;
		}
		//Load monsters!
		public function encounter(id:Number):void {
			loadPlayer();
			//Load Rhapsody
			if (id == 000) {
				e1_Name = "Rhapsody";
				e1_MaxHP = Rhapsody.HP;
				e1_MaxMP = Rhapsody.MP;
				e1_MaxSP = Rhapsody.SP;
				e1_HP = e1_MaxHP;
				e1_MP = e1_MaxMP;
				e1_SP = e1_MaxSP;
				e1_Str = Rhapsody.str;
				e1_Endr = Rhapsody.endr;
				e1_Dex = Rhapsody.dex;
				e1_Agi = Rhapsody.agi;
				e1_Wis = Rhapsody.wis;
				e1_Lust = 0;
				e1_Turn = 1;
			}	
		}
		public function pcAttack():void {
			var dmg:Number = 0;
			if (pc_Str < e1_Endr) {
				dmg = 0;
				Core.text.combatOutput("\r\rYou attack " + e1_Name + " but you are too weak to deal any damage.", false);
				updateHP();
			}
			else if (pc_Str >= e1_Endr) {
				dmg = pc_Str - e1_Endr;
				e1_HP -= dmg;
				Core.text.combatOutput("\r\rYou attack " + e1_Name + ", dealing " + dmg + " points of damage.", false);
				updateHP();
			}
			else if (pc_Str >= e1_Endr * 2) {
				dmg = pc_Str;
				e1_HP -= dmg;
				Core.text.combatOutput("\r\rYou score a critical hit on " + e1_Name + "! You deal " + dmg + " points of damage.", false);
				updateHP();
			}
			pc_Turn += 1;
			e1Turn();
			
		}
		//ENEMEY 1 AI
		//Not sure how the fuck I'm programming this
		public function e1Turn():void {
			//Attack
			var dmg:Number = 0;
			if (e1_Name == "Rhapsody") {
				if (pc_Turn == 5) {
					Core.text.combatOutput("Rhapsody brushes off her shoulder as if dust had collected on it or something. Despite your efforts, none of your attacks seemed to have phased her at all. Fear begins to grip at you as it sinks in that you are, horribly, ill-equipped and out-matched in this confrontation. However, Rhapsody makes no inclination of attacking you. Instead, the environment shimmers and returns to the road you were on before.", true);
					Core.screens.combat.btnContinue.visible = true;
					Core.screens.combat.btnAttack.visible = false;
					Core.screens.combat.btnSkills.visible = false;
					Core.screens.combat.btnMagic.visible = false;
					Core.screens.combat.btnEscape.visible = false;
				}
				else Core.text.combatOutput("\r\rRhapsody simply stands there, seemingly unphased by your efforts.", false);
			}
		}
		private function updateHP() {
			//if (pc_HP <= 0) {
				//pc_HP = 0;
				//endCombat();
			//}
			if (pc_HP <= 0) {
				pc_HP = 0;
				Core.screens.combat.pcPane.currHP.text = "" + pc_HP + "";
			}
			else Core.screens.combat.pcPane.currHP.text = "" + pc_HP + "";
			Core.screens.combat.e1Pane.currHP.text = "" + e1_HP + "";
		}
	}
}