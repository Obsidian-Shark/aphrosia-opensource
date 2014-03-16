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
		//Equipment
		//Traveler's Garb
		public var cotTunic:Armor = new Armor( { "name":"Cotton Tunic", "count":1, "value":20, "defMod":1.5, "chrsMod":0, "enchant":"none", "slot":"chest" } );
		public var hideBoots:Armor = new Armor( { "name":"Hide Boots", "count":1, "value":10, "defMod":1.5, "chrsMod":0, "enchant":"none", "slot":"feet" } );
		public var hidePants:Armor = new Armor( { "name":"Hide Pants", "count":1, "value":20, "defMod":1.5, "chrsMod":0, "enchant":"none", "slot":"legs" } );
		//Leather Armor
		public var leathBoots:Armor = new Armor( { "name":"Leather Boots", "count":1, "value":50, "defMod":2, "chrsMod":1.5, "enchant":"none", "slot":"feet" } );
		public var leathPants:Armor = new Armor( { "name":"Leather Pants", "count":1, "value":75, "defMod":2, "chrsMod":1.5, "enchant":"none", "slot":"legs" } );
		public var leathVest:Armor = new Armor( { "name":"Leather Vest", "count":1, "value":75, "defMod":2, "chrsMod":1.5, "enchant":"none", "slot":"chest" } );
		//Keys
		public var istKey:Item = new Item( { "name":"Storage Key", "count":1, "value":0 } );
		//Potions & Vials
		public var inferil:Potion = new Potion( { "type":"Fertility", "name":"Inferil", "count":1, "value": 2 } );
		public var smHPVial:Potion = new Potion( { "type":"Health", "name":"Sm. HP Vial", "count":1, "value": 5 } );
		//Weapons
		public var advenBlade:Weapon = new Weapon ( { "type":"one-hand", "name":"Adventurer's Blade", "count":1, "value":0, "dmgMod":3.5, "enchant":"none"} );
		public var axe:Weapon = new Weapon ( { "type":"one-hand", "name":"Axe", "count":1, "value":80, "dmgMod":1.5, "enchant":"none" } );
		public var dagger:Weapon = new Weapon ( { "type":"one-hand", "name":"Dagger", "count":1, "value":40, "dmgMod":1.5, "enchant":"none" } );
		public var halberd:Weapon = new Weapon( { "type":"two-hand", "name":"Halberd", "count":1, "value":100, "dmgMod":2.5, "enchant":"none" } );
	}
	
}