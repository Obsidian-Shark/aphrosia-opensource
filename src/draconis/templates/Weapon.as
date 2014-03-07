package draconis.templates {
	
	/**
	 * ...
	 * @author Obsidian Shark ...
	 */
	
	 import draconis.templates.Item;
	 
	dynamic public class Weapon extends Item {
		public var dmgMod:Number = 0; //increases damage dealt by X%
		public var type:String = ""; //identifies type of weapon (sword, spear, whip, etc)
		public var enchant:String = ""; //Item enchantmnet... usually a special modifier or perk
		
		public function Weapon() {
			//constructor code
			
		}
		
		public function enchantEffect():void {
			//checks for & applies enchantment effect of weapon
		}
		
	}
	
}