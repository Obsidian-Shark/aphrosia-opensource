package draconis.screens {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import draconis.Core;
	import draconis.handlers.*;
	
	
	public class Inventory extends MovieClip {
		
		
		public function Inventory() {
			// constructor code
			this.addEventListener(Event.ADDED_TO_STAGE, initialize);
		}
		private function initialize(e:Event):void {
			btnReturn.btnText.mouseEnabled = false;
			btnReturn.btnText.text = "Resume";
			btnReturn.visible = true;
			bagText.text = "No Items";
			equipText.text = "No Items";
			Core.buttons.initiInven();
		}
	}
	
}
