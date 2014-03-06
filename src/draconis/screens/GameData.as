package draconis.screens {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.net.SharedObject;
	
	import draconis.*;
	
	
	public class GameData extends MovieClip {
		
		
		public function GameData() {
			// constructor code
			this.addEventListener(Event.ADDED_TO_STAGE, initialize);
		}
		private function initialize(e:Event):void {
			//Set output fields
			saveCheck.text = "";
			slot1Descript.text = "Empty";
			slot2Descript.text = "Empty";
			slot3Descript.text = "Empty";
			slot4Descript.text = "Empty";
			//Deactivate button textfields
			slot1Save.btnText.mouseEnabled = false;
			slot1Load.btnText.mouseEnabled = false;
			btnSlot2.btnText.mouseEnabled = false;
			btnSlot3.btnText.mouseEnabled = false;
			btnSlot4.btnText.mouseEnabled = false;
			btnResume.btnText.mouseEnabled = false;
			btnMenu.btnText.mouseEnabled = false;
			//Set default button labels
			slot1Save.btnText.text = "Save";
			slot1Load.btnText.text = "Load";
			btnSlot2.btnText.text = "Slot 2";
			btnSlot3.btnText.text = "Slot 3";
			btnSlot4.btnText.text = "Slot 4";
			btnResume.btnText.text = "Resume";
			btnMenu.btnText.text = "Main Menu";
			//Default button visibility
			slot1Save.visible = false;
			slot1Load.visible = false;
			btnSlot2.visible = false;
			btnSlot3.visible = false;
			btnSlot4.visible = false;
			if (Core.flags.activeGame) btnResume.visible = true;
			else btnResume.visible = false;
			btnMenu.visible = true;
			Core.buttons.initiData();
		}
	}
	
}
