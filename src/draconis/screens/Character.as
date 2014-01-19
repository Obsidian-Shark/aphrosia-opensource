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
		private function initialize(e:Event):void {
			//Set output fields
			pcName.text = "" + Player.name + "";
			level.text = "" + Player.lvl + "";
			strOutput.text = "" + Player.str + "";
			endrOutput.text = ""+Player.endr + "";
			dexOutput.text = "" + Player.dex + "";
			agiOutput.text = "" + Player.agi + "";
			wisOutput.text = "" + Player.wis + "";
			chrsOutput.text = "" + Player.chrs + "";
			//Deactivate button textfields
			btnReturn.btnText.mouseEnabled = false;
			//Set default button labels
			btnReturn.btnText.text = "Resume";
			//Default button visibility
			btnReturn.visible = true;
			Core.buttons.initiProfile();
			appearDescript();
		}
		private function appearDescript():void {
			Core.text.descriptOutput("You are a human " + Player.pcSex()+", standing at "+Player.pcHeight()+" tall. You have "+Player.hairLength+" inch long, "+Player.hairColor+" hair and "+Player.eyeColor+" eyes. Your [muscle] body is covered in "+Player.skinColor+" "+Player.skinType+"", true)
		}
	}
	
}
