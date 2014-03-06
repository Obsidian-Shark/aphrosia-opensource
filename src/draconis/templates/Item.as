package draconis.templates{
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	public class  Item	extends Object {
		public var label:String = "";
		public var count:int = 0;
		public var value:int = 0;
		public var dmgMod:int = 0;
		public var defMod:int = 0;
		
		public function Item(Properties:Object) {
			//constructor code
			//define only the properties needed for generated object
			for (var Name:String in Properties) {
				if (this.hasOwnProperty(Name)) {
					this[Name] = Properties[Name];
				}
			}
		}
		
	}
	
}