package draconis.templates {
	
	/**
	 * ...
	 * @author Obsidian Shark ...
	 */
	
	 import draconis.templates.*;
	 
	dynamic public class Potion extends Item {
		public var type:String = ""; //Identifies type of potion (health, mana, TF, etc.)
		
		public function Potion(Properties:Object) {
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
		public function transform():void {
			//For triggering transformations (Player use)
		}
	}
	
}