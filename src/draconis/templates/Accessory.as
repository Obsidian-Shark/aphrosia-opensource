package draconis.templates{
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	 import draconis.templates.Item;
	
	dynamic public class Accessory extends Item {
		public var enchant:String = ""; //Item enchantmnet... usually a special modifier or perk
		public var type:String = ""; //Identifies type of accessory (necklace, rings, earriings, etc.)
		
		public function Accessory {
			//constructor code
		}
		
		public function enchantEffect():void {
			//checks for & applies enchantment effect of accessory
		}
		
	}
	
}