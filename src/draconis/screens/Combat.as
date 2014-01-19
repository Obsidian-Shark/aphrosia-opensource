package draconis.screens {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import draconis.*;
	
	
	public class Combat extends MovieClip {
		
		
		public function Combat() {
			// constructor code
			this.addEventListener(Event.ADDED_TO_STAGE, initialize);
		}
		private function initialize(e:Event):void {
			Core.text.currText = "";
			//Player Display
			pcPane.Name.text = "" + Player.name + "";
			pcPane.currHP.text = "" + Core.combat.pc_HP + "";
			pcPane.currMP.text = "" + Core.combat.pc_MP + "";
			pcPane.currSP.text = "" + Core.combat.pc_SP + "";
			//Companion 1 Display
			if (Core.combat.comp1_Active) {
				comp1Pane.visible = true;
			}
			else {
				comp1Pane.visible = false;
			}
			comp1Pane.Name.text = "" + Core.combat.comp1_Name + "";
			comp1Pane.currHP.text = "" + Core.combat.comp1_HP + "";
			comp1Pane.currMP.text = "" + Core.combat.comp1_MP + "";
			comp1Pane.currSP.text = "" + Core.combat.comp1_SP + "";
			//Companion 2 Display
			if (Core.combat.comp2_Active) {
				comp2Pane.visible = true;
			}
			else {
				comp2Pane.visible = false;
			}
			comp2Pane.Name.text = "" + Core.combat.comp2_Name + "";
			comp2Pane.currHP.text = "" + Core.combat.comp2_HP + "";
			comp2Pane.currMP.text = "" + Core.combat.comp2_MP + "";
			comp2Pane.currSP.text = "" + Core.combat.comp2_SP + "";
			//Enemy 1 Display
			e1Pane.Name.text = "" + Core.combat.e1_Name + "";
			e1Pane.currHP.text = "" + Core.combat.e1_HP + "";
			e1Pane.currMP.text = "" + Core.combat.e1_MP + "";
			e1Pane.currSP.text = "" + Core.combat.e1_SP + "";
			//Enemy 2 Display
			if (Core.combat.e2_Active) {
				e2Pane.visible = true;
			}
			else {
				e2Pane.visible = false;
			}
			e2Pane.Name.text = "" + Core.combat.e2_Name + "";
			e2Pane.currHP.text = "" + Core.combat.e2_HP + "";
			e2Pane.currMP.text = "" + Core.combat.e2_MP + "";
			e2Pane.currSP.text = "" + Core.combat.e2_SP + "";
			//Enemy 3 Display
			if (Core.combat.e3_Active) {
				e3Pane.visible = true;
			}
			else {
				e3Pane.visible = false;
			}
			e3Pane.Name.text = "" + Core.combat.e3_Name + "";
			e3Pane.currHP.text = "" + Core.combat.e3_HP + "";
			e3Pane.currMP.text = "" + Core.combat.e3_MP + "";
			e3Pane.currSP.text = "" + Core.combat.e3_SP + "";
			//Button visibility
			btnContinue.visible = false;
			//Disable button textfields
			btnAttack.btnText.mouseEnabled = false;
			btnSkills.btnText.mouseEnabled = false;
			btnMagic.btnText.mouseEnabled = false;
			btnEscape.btnText.mouseEnabled = false;
			btnContinue.btnText.mouseEnabled = false;
			//Set button labels
			btnAttack.btnText.text = "Attack";
			btnSkills.btnText.text = "Skills";
			btnMagic.btnText.text = "Magic";
			btnEscape.btnText.text = "Escape";
			btnContinue.btnText.text = "Continue";
			Core.buttons.initiCombat();
			Core.combat.loadPlayer();
		}
	}
	
}
