package draconis.handlers{
	
	/**
	 * ...
	 * @author Obsidian Shark
	 */
	dynamic public class FlagHandler {
		//Developer Mode toggle
		public var switch_DevMode:Boolean = false;
		//Active Game check
		public var activeGame:Boolean = false;
		//Location Check
		public var loc_tyrRuins:Boolean = false;
		public var loc_vespyr:Boolean = false;
		public var loc_greenSea:Boolean = false;
		public var loc_elsyrWoodlands:Boolean = false;
		public var loc_elsyr:Boolean = false;
		//One-time Event flags... to prevent cheating exploits... I hope
		public var tyr_HelpedArgoAtShop:Boolean = false;
		public var tyr_FlirtedWithArgo:Boolean = false;
		public var tyr_DayWithBrian:Boolean = false;
		public var tyr_DayWithSasha:Boolean = false;
		public var vespyr_TraveledWithHyperiusAndElra = false;
		public var vespyr_BittenByDisfiguredHomeless = false;
		public var vespyr_HadSexWithTheFaunShopkeeper = false;
		public var vespyr_RescueTheDruggedCentaurWhore = false;
		//Container Checks
		public var tyr_DeadMomHasAmulet:Boolean = true;
		//Door Checks
		public var tyrRuins_StorageDoorLocked:Boolean = true;
		//Inventory Checks
		public var player_HasISTKey:Boolean = false;
		public var player_HasOldSword:Boolean = false;
	}
	
}