package draconis.handlers {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 * @author Pako...
	 */
	
	 import draconis.Core;
	 import draconis.templates.*;
	
	public class ItemHandler {
		//Collectible Items
		public var drgblmWhiskey:Item = new Item( { name:"Dragonbloom Whiskey", id:"item", value:10000 } );
		public var familyAmulet:Item = new Item( { name:"Family Amulet", id:"item", value:0 } );
		public var oldSword:Item = new Item( { name:"Old Sword", id:"item", value:0 } );
		//Equipment
		//Traveler's Garb
		public var cotTunic:Armor = new Armor( { name:"Cotton Tunic", id:"equip", value:20, defMod:1.5, chrsMod:0, enchant:"none", slot:"chest" } );
		public var hideBoots:Armor = new Armor( { name:"Hide Boots", id:"eqiup", value:10, defMod:1.5, chrsMod:0, enchant:"none", slot:"feet" } );
		public var hidePants:Armor = new Armor( { name:"Hide Pants", id:"equip", value:20, defMod:1.5, chrsMod:0, enchant:"none", slot:"legs" } );
		//Leather Armor
		public var leathBoots:Armor = new Armor( { name:"Leather Boots", id:"equip", value:50, defMod:2, chrsMod:1.5, enchant:"none", slot:"feet" } );
		public var leathPants:Armor = new Armor( { name:"Leather Pants", id:"equip", value:75, defMod:2, chrsMod:1.5, enchant:"none", slot:"legs" } );
		public var leathVest:Armor = new Armor( { name:"Leather Vest", id:"equip", value:75, defMod:2, chrsMod:1.5, enchant:"none", slot:"chest" } );
		//Keys
		public var istKey:Item = new Item( { name:"Storage Key", id:"item", value:0 } );
		//Potions & Vials
		public var inferil:Potion = new Potion( { type:"Fertility", name:"Inferil", id:"item", value: 2 } );
		public var smHPVial:Potion = new Potion( { type:"Health", name:"Sm. HP Vial", id:"item", value: 5 } );
		//Weapons
		public var advenBlade:Weapon = new Weapon ( { type:"one-hand", name:"Adventurer's Blade", id:"equip", value:0, dmgMod:3.5, enchant:"none"} );
		public var axe:Weapon = new Weapon ( { type:"one-hand", name:"Axe", id:"equip", value:80, dmgMod:1.5, enchant:"none" } );
		public var dagger:Weapon = new Weapon ( { type:"one-hand", name:"Dagger", id:"equip", value:40, dmgMod:1.5, enchant:"none" } );
		public var fists:Weapon = new Weapon ( { type:"bare", name:"Fists", id:"equip", value: 0, dmgMod:0, enchant:"none" } );
		public var halberd:Weapon = new Weapon( { type:"two-hand", name:"Halberd", id:"equip", value:100, dmgMod:2.5, enchant:"none" } );
		
		public function ItemHandler() {
		//constructor code
		
		}
	}
	
}