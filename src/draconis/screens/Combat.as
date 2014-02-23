package draconis.screens {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
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
			//Pane displays
			pcPane.visible = false;
			comp1Pane.visible = false;
			comp2Pane.visible = false;
			e1Pane.visible = false;
			e2Pane.visible = false;
			e3Pane.visible = false;
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
		}
	}
	
}
