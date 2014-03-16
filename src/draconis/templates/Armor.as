package draconis.templates{
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 * @author Void Director...
	 */
	
	import draconis.templates.*;
	
	dynamic public class Armor extends Item {
		public var defMod:Number = 0; //reduces damage recieved by X%
		public var chrsMod:Number = 0; //modifes charisma score by X% (either positively or negatively)
		public var enchant:String = ""; //Item enchantment... usually a special modifier or perk
		public var slot:String = ""; //Which slot item equpis to
		
		public function Armor(Properties:Object) {
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
			//checks for& applies enchantment effect of armor/clothing
		}
		
	}
	
}