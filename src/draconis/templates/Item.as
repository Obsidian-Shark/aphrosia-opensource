package draconis.templates{
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	dynamic public class Item extends Object {
		public var name:String = "";
		public var type:String = "";
		public var count:int = 0;
		public var value:int = 0;
		public var dmgMod:Number = 0; //Increases damage output by X%
		public var defMod:Number = 0; //Reduces damage taken by X%
		public var chrsMod:Number = 0; //Increases charisma score by X%
		
		public function Item(Properties:Object ) {
			//constructor code
			//pass an object through and set what variables are needed
			for (var Name:String in Properties) {
				//Matching property names over-write the defaults
				if (this.hasOwnProperty(Name)) {
					this[Name] = Properties[Name];
				}
			}
			
		}
		
	}
	
}