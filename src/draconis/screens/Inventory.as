package draconis.screens {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 * @author Pako...
	 */
	
	import draconis.templates.Item;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import draconis.Core;
	import draconis.handlers.*;
	
	
	public class Inventory extends MovieClip {
		public var equipList:Array = [];
		public var itemList:Array = [];
		
		
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
			sortInventory();
			displayEquip();
			displayItem();
			trace(equipList);
			trace(itemList);
		}
		//Adapted from Pako
		private function sortInventory():void {
			for each(var item:Item in Core.pc.bag) {
				switch(item.id) {
					case "equip":
						equipList.push(item);
					break;
					case "item":
						itemList.push(item);
					break;
				}
			}			
		}
		private function displayEquip():void {
			for (var i:int = 0; i < equipList.length; i++) {
				equipText.appendText(equipList[i].name);
			}
		}
		private function displayItem():void {
			for (var i:int = 0; i < itemList.length; i++) {
				bagText.appendText(equipList[i].name);
			}
		}
	}
	
}