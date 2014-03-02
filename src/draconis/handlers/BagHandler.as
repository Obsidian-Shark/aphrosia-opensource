package draconis.handlers  {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	public class BagHandler {
		//Healing vials
		public var sm_HPvial:int = 0;
		public var med_HPvial:int  = 0;
		public var lg_HPvial:int  = 0;
		public var sm_MPvial:int  = 0;
		public var med_MPvial:int = 0;
		public var lg_MPvial:int = 0;
		//Currency
		public var sigils:int = 0;
		public var divCards:int = 0;
		//Luna Cards
		public var lunarCards:Array = [];
		//Key & Quest Items
		public var keyRing:Array = [];
		public var questItems:Array = [];
		public var keyStones:Array = [];
		public var keepsakes:Array = [];
		//Clothing
		public var chestArmor:Array = [];
		public var legArmor:Array = [];
		public var feetArmor:Array = [];
		public var handArmor:Array = [];
		

		public function BagHandler() {
			// constructor code
		}
		
		public function flushInven() {
			sm_HPvial = 0;
			med_HPvial = 0;
			lg_HPvial = 0;
			sm_MPvial = 0;
			med_MPvial = 0;
			lg_MPvial = 0;
			sigils = 0;
			divCards = 0;
			lunarCards = [];
			keyRing = [];
			questItems = [];
			keyStones = [];
			keepsakes = [];
			chestArmor = [];
			legArmor = [];
			feetArmor = [];
			handArmor = [];			
		}

	}
	
}
