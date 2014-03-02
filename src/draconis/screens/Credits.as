package draconis.screens {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import draconis.*;
	
	
	public class Credits extends MovieClip {
		
		
		public function Credits() {
			// constructor code
			this.addEventListener(Event.ADDED_TO_STAGE, initialize);
		}
		private function initialize(e:Event):void {
			btnMenu.btnText.mouseEnabled = false;
			btnMenu.btnText.text = "Main Menu";
			Core.buttons.initCredit();
		}
	}
	
}
