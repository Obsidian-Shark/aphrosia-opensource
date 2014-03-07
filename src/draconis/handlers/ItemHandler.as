package draconis.handlers {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	 import draconis.templates.*;
	
	public class ItemHandler {
		//Collectible Items
		public var drgblmWhiskey:Item = new Item( { "name":"Dragonbloom Whiskey", "count":1, "value":10000 } );
		public var familyAmulet:Item = new Item( { "name":"Family Amulet", "count":1, "value":0 } );
		public var oldSword:Item = new Item( { "name":"Old Sword", "count":1, "value":0 } );
		//Keys
		public var istKey:Item = new Item( { "name":"Storage Key", "count":1, "value":0 } );
		//Potions & Vials
		public var smHPVial:Potion = new Potion( { "type":"Health", "name":"Sm. HP Vial", "count":1, "value": 5} );
	}
	
}