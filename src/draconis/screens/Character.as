package draconis.screens {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import draconis.Core;
	import draconis.Player;
	
	
	public class Character extends MovieClip {
		
		
		public function Character() {
			// constructor code
			this.addEventListener(Event.ADDED_TO_STAGE, initialize);
		}
		private function initialize(e:Event) {
			//Set output fields
			strOutput.text = "" + Core.pc.str + "";
			endrOutput.text = ""+ Core.pc.endr + "";
			dexOutput.text = "" + Core.pc.dex + "";
			agiOutput.text = "" + Core.pc.agi + "";
			wisOutput.text = "" + Core.pc.wis + "";
			chrsOutput.text = "" + Core.pc.chrs + "";
			//Deactivate button textfields
			btnReturn.btnText.mouseEnabled = false;
			//Set default button labels
			btnReturn.btnText.text = "Resume";
			//Default button visibility
			btnReturn.visible = true;
			Core.buttons.initiProfile();
		}
	}
	
}
