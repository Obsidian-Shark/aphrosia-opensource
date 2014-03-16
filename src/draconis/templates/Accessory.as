package draconis.templates{
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	 import draconis.templates.Item;
	
	dynamic public class Accessory extends Item {
		public var enchant:String = ""; //Item enchantmnet... usually a special modifier or perk
		public var type:String = ""; //Identifies type of accessory (necklace, rings, earriings, etc.)
		
		public function Accessory(Properties:Object) {
			//constructor code
			//pass an object through and set what variables are needed
			super(Properties);
			for (var Name:String in Properties) {
				//Matching property names over-write the defaults
				if (this.hasOwnProperty(Name)) {
					this[Name] = Properties[Name];
				}
			}
		}
		
		public function enchantEffect():void {
			//checks for & applies enchantment effect of accessory
		}
		
	}
	
}