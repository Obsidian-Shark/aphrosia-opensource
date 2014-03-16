package draconis.templates {
	
	/**
	 * ...
	 * @author Obsidian Shark ...
	 */
	
	 import draconis.templates.Item;
	 
	dynamic public class Weapon extends Item {
		public var dmgMod:Number = 0; //increases damage dealt by X%
		public var type:String = ""; //identifies type of weapon (1-hand, 2-hand, ranged, etc.)
		public var enchant:String = ""; //Item enchantmnet... usually a special modifier or perk
		
		public function Weapon(Properties:Object) {
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
			//checks for & applies enchantment effect of weapon
		}
		
	}
	
}