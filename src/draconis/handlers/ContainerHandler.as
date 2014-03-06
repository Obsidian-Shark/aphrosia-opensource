package draconis.handlers {
	
	/**
	 * ...
	 * @author Obsidian Shark
	 */
	
	public class ContainerHandler {
		//Containers for Story.as
		public var motherContainer:Object = { Amulet:true };
		//Containers for Tyr Ruins
		public var barContainer:Object = {Coins:true};
		public var cartContainer:Object = {Purse:true, Vial:true};
		public var corpseContainer:Object = {Key:true, Purse:true};
		public var strgRmContainer:Object = { Vial:true, Whiskey:true };
		
		public function ContainerHandler() {
			//constructor code
		}
		public function resetContainers():void {
			barContainer = { Coins:true };
			cartContainer = { Purse:true, Vial:true };
			corpseContainer = { Key:true, Purse:true };
			strgRmContainer = { Vial:true, Whiskey:true };
		}
	}
	
}