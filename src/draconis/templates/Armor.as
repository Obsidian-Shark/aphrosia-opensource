package draconis.templates{
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 * @author Void Director...
	 */
	
	import draconis.templates.Item;
	
	dynamic public class Armor extends Item {
		public var defMod:Number = 0; //reduces damage recieved by X%
		public var chrsMod:Number = 0; //modifes charisma score by X% (either positively or negatively)
		public var enchant:String = "None"; //Item enchantment... usually a special modifier or perk
		
		public function Armor() {
			//constructor code
		}
		
		public function enchantEffect():void {
			//checks for& applies enchantment effect of armor/clothing
		}
		
	}
	
}