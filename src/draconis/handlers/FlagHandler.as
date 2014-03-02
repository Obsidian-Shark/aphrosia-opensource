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
		public var vespyr_TraveledWithHyperiusAndElra:Boolean = false;
		public var vespyr_BittenByDisfiguredHomeless:Boolean = false;
		public var vespyr_HadSexWithTheFaunShopkeeper:Boolean = false;
		public var vespyr_RescueTheDruggedCentaurWhore:Boolean = false;
		//Door Checks
		public var tyrRuins_StorageDoorLocked:Boolean = true;
		//Inventory Checks
		public var player_HasISTKey:Boolean = false;
		public var player_HasOldSword:Boolean = false;
		
		public function FlagHandler() {
			//constructor code
		}
		
		public function resetFlags():void {
			//Developer Mode toggle
			switch_DevMode = false;
			//Active Game check
			activeGame = false;
			//Location Check
			loc_tyrRuins = false;
			loc_vespyr = false;
			loc_greenSea = false;
			loc_elsyrWoodlands = false;
			loc_elsyr= false;
			//One-time Event flags... to prevent cheating exploits... I hope
			tyr_HelpedArgoAtShop = false;
			tyr_FlirtedWithArgo = false;
			tyr_DayWithBrian = false;
			tyr_DayWithSasha = false;
			vespyr_TraveledWithHyperiusAndElra = false;
			vespyr_BittenByDisfiguredHomeless = false;
			vespyr_HadSexWithTheFaunShopkeeper = false;
			vespyr_RescueTheDruggedCentaurWhore = false;
			//Door Checks
			tyrRuins_StorageDoorLocked = true;
			//Inventory Checks
			player_HasISTKey = false;
			player_HasOldSword= false;
		}
	}
}