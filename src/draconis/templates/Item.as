package draconis.templates{
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	dynamic public class Item extends Object {
		public var name:String = "";
		public var count:int = 0;
		public var value:int = 0;
		
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