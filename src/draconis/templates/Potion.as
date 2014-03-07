package draconis.templates {
	
	/**
	 * ...
	 * @author Obsidian Shark ...
	 */
	
	 import draconis.templates.Item;
	 
	dynamic public class Potion extends Item {
		public var type:String = ""; //Identifies type of potion (health, mana, TF, etc.)
		
		public function Potion() {
			//constructor code
		}
		
		public function trasnform():void {
			//For triggering transformations (Player use)
		}
		public function heal():void {
			//For restoring HP or MP on target
		}
	}
	
}