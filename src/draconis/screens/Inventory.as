package draconis.screens {
	
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
			sigilTotal.text = "" + Core.bag.sigils + "";
			dCardsTotal.text = "" + Core.bag.divCards + "";
			Core.buttons.initiInven();
			currInventory();
		}
		private function currInventory():void {	
			Core.text.currText = "";
			keyStones();
			keepsakes();
			if (Core.bag.sm_HPvial >= 1) Core.text.bagOutput("\rSmall Health Vial x" +Core.bag.sm_HPvial + "", false);
			if (Core.bag.med_HPvial >= 1) Core.text.bagOutput("\rMedium Healthy Vial x" + Core.bag.med_HPvial + "", false);
			if (Core.bag.lg_HPvial >= 1) Core.text.bagOutput("\rLarge Health Vial x" + Core.bag.lg_HPvial + "", false);
			if (Core.bag.sm_MPvial >= 1) Core.text.bagOutput("\rSmall Mana Vial x" +Core.bag.sm_MPvial + "", false);
			if (Core.bag.med_MPvial >= 1) Core.text.bagOutput("\rMedium Mana Vial x" + Core.bag.med_MPvial + "", false);
			if (Core.bag.lg_MPvial >= 1) Core.text.bagOutput("\rLarge Mana Vial x" + Core.bag.lg_MPvial + "", false);
		}
		private function keyStones():void {
			if (Core.bag.keyStones.length == 1)	Core.text.bagOutput("" + Core.bag.keyStones[0] + " Stone", false);
		}
		private function keepsakes():void {
			if (Core.bag.keepsakes.length >= 1) {
				Core.text.bagOutput("\r" + Core.bag.keepsakes[0] + "", false);
				if(Core.bag.keepsakes.length >= 2) Core.text.bagOutput("\r" + Core.bag.keepsakes[1] + "", false);
				if(Core.bag.keepsakes.length >= 3)Core.text.bagOutput("\r"+ Core.bag.keepsakes[2] + "", false);
			}
		}
	}
	
}
