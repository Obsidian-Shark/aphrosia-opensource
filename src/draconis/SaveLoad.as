package draconis {
	
	import flash.net.SharedObject;
	import draconis.Core;
	import draconis.Player;
	import draconis.handlers.*;
	import draconis.locations.city.*;
	
	public class SaveLoad {
		public var saveGame:Boolean = false;
		public var loadGame:Boolean = false;
		
		public var saveFile1 = SharedObject.getLocal("slot1");

		public function SaveLoad() {
			// constructor code
		}
		public function saveData1() {
			saveFile1.data.exists = true;
			//FLAGHANDLER.AS DATA
			saveFile1.data.devMode = Core.flags.switch_DevMode;
			saveFile1.data.activeGame = Core.flags.activeGame;
			saveFile1.data.tyr_HelpedArgoAtShop = Core.flags.tyr_HelpedArgoAtShop;
			saveFile1.data.tyr_DeadMomHasAmulet = Core.flags.tyr_DeadMomHasAmulet;
			saveFile1.data.tyrRuins_BarHasCoins = Core.flags.tyrRuins_BarHasCoins;
			saveFile1.data.tyrRuins_CorpseHasSword = Core.flags.tyrRuins_CorpseHasSword;
			saveFile1.data.tyrRuins_CorpseHasKey = Core.flags.tyrRuins_CorpseHasKey;
			saveFile1.data.tyrRuins_StorageHasVial = Core.flags.tyrRuins_StorageHasVial;
			saveFile1.data.tyrRuins_StorageHasWhiskey = Core.flags.tyrRuins_StorageHasWhiskey;
			saveFile1.data.tyrRuins_CartHasPurse = Core.flags.tyrRuins_CartHasPurse;
			saveFile1.data.tyrRuins_CartHasVial = Core.flags.tyrRuins_CartHasVial;
			saveFile1.data.tyrRuins_StorageDoorLocked = Core.flags.tyrRuins_StorageDoorLocked;
			saveFile1.data.player_HasISTKey = Core.flags.player_HasISTKey;
			saveFile1.data.player_HasOldSword = Core.flags.player_HasOldSword;
			//EVENTHANDLER.AS DATA
			saveFile1.data.currEvent = Core.events.currEvent;
			//BAGHANDLER.AS DATA
			saveFile1.data.smHPVial = Core.bag.sm_HPvial;
			saveFile1.data.medHPVial = Core.bag.med_HPvial;
			saveFile1.data.lgHPVial = Core.bag.lg_HPvial;
			saveFile1.data.smMPVial = Core.bag.sm_MPvial;
			saveFile1.data.medMPVial = Core.bag.med_MPvial;
			saveFile1.data.lgMPVial = Core.bag.lg_MPvial;
			saveFile1.data.sigils = Core.bag.sigils;
			saveFile1.data.divineCards = Core.bag.divCards;
			saveFile1.data.lunarCards = Core.bag.lunarCards;
			saveFile1.data.keys = Core.bag.keyRing;
			saveFile1.data.questItems = Core.bag.questItems;
			saveFile1.data.keyStones = Core.bag.keyStones;
			saveFile1.data.keepsakes = Core.bag.keepsakes;
			saveFile1.data.chestArmor = Core.bag.chestArmor;
			saveFile1.data.legArmor = Core.bag.legArmor;
			saveFile1.data.feetArmor = Core.bag.feetArmor;
			saveFile1.data.handArmor = Core.bag.handArmor;			
			//PLAYER.AS DATA
			//Base data
			saveFile1.data.pc_Name = Player.name;
			saveFile1.data.pc_Gender = Player.gender;
			saveFile1.data.pc_Fertility = Player.fertile;
			saveFile1.data.pc_Level = Player.lvl;
			//Combat data
			saveFile1.data.pc_Strength = Player.str;
			saveFile1.data.pc_Endurance = Player.endr;
			saveFile1.data.pc_Dexterity = Player.dex;
			saveFile1.data.pc_Agility = Player.agi;
			saveFile1.data.pc_Wisdom = Player.wis;
			saveFile1.data.pc_Charisma = Player.chrs;
			saveFile1.data.pc_Health = Player.HP;
			saveFile1.data.pc_Mana = Player.MP;
			saveFile1.data.pc_Stamina = Player.SP;
			//Personality data
			saveFile1.data.pc_Aggression = Player.aggro;
			saveFile1.data.pc_Passive = Player.passi;
			saveFile1.data.pc_Noble = Player.noble;
			saveFile1.data.pc_Selfish = Player.self;
			saveFile1.data.pc_SubDom = Player.subDom;
			//Alignment
			saveFile1.data.resistance = Player.resFaction;
			saveFile1.data.blackArmy = Player.bl_arFaction;
			saveFile1.data.neutral = Player.neuFaction;
			//Body Scores
			saveFile1.data.pc_Muscles = Player.muscles;
			saveFile1.data.pc_Fat = Player.fat;
			saveFile1.data.pc_Flexibility = Player.flexi;
			saveFile1.data.pc_PhysicalGender = Player.gendAppear;
			saveFile1.data.pc_Height = Player.height;
			//Body Variables
			saveFile1.data.pc_MilkProduction = Player.milkProd;
			saveFile1.data.pc_CumProduction = Player.cumProd;
			saveFile1.data.pc_NippleLength = Player.nipLength;
			saveFile1.data.pc_PenisLength = Player.penisLength;
			saveFile1.data.pc_PenisGirth = Player.penisGirth;
			saveFile1.data.pc_PenisArea = Player.penisArea;
			saveFile1.data.pc_TesticleSize = Player.testeSize;
			saveFile1.data.pc_ClitLength = Player.clitLength;
			saveFile1.data.pc_VaginaDepth = Player.vaginaDepth;
			saveFile1.data.pc_VagainaGirth = Player.vaginaGirth;
			saveFile1.data.pc_VaginaWetness = Player.vaginaWet;
			saveFile1.data.pc_AnalDepth = Player.assDepth;
			saveFile1.data.pc_AnalGirth = Player.assGirth;
			saveFile1.data.pc_AnalArea = Player.assArea;
			saveFile1.data.pc_AnalVolume = Player.assCap;
			saveFile1.data.pc_WombCapacity = Player.wombCap;
			saveFile1.data.pc_BreastCapacity = Player.breastCap;
			saveFile1.data.pc_BallCapacity = Player.ballCap;
			saveFile1.data.pc_HairLength = Player.hairLength;
			//Body Slot Data
			saveFile1.data.pc_BreastSize = Player.breastSize;
			saveFile1.data.pc_CumType = Player.cumType;
			saveFile1.data.pc_EarType = Player.earType;
			saveFile1.data.pc_FeetType = Player.feetType;
			saveFile1.data.pc_LegType = Player.legType;
			saveFile1.data.pc_MilkType = Player.milkType;
			saveFile1.data.pc_NippleType = Player.nipType;
			saveFile1.data.pc_PenisType = Player.penisType;
			saveFile1.data.pc_SheathType = Player.sheathType;
			saveFile1.data.pc_SkinType = Player.skinType;
			saveFile1.data.pc_TailType = Player.tailType;
			saveFile1.data.pc_TongueType = Player.tongueType;
			saveFile1.data.pc_VaginaType = Player.vagType;
			saveFile1.data.pc_WingType = Player.wingType;
			//Coloration Data
			saveFile1.data.pc_EyeColor = Player.eyeColor;
			saveFile1.data.pc_FurColor = Player.furColor;
			saveFile1.data.pc_HairColor = Player.hairColor;
			saveFile1.data.pc_ScaleColor = Player.scaleColor;
			saveFile1.data.pc_SkinColor = Player.skinColor;
			//Misc. Data & Flags
			saveFile1.data.pc_Virginity = Player.isVirgin;
			//Equipment Slot Data
			saveFile1.data.pc_WearingChest = Player.chestSlot;
			saveFile1.data.pc_WearingFeet = Player.feetSlot;
			saveFile1.data.pc_WearingHands = Player.handSlot;
			saveFile1.data.pc_WearingLegs = Player.legSlot;
			saveFile1.data.pc_Weapon = Player.weaponSlot;
		}
		public function loadData1() {
			if (saveFile1.data.exists) {
				//FLAGHANDLER.AS DATA
				Core.flags.switch_DevMode = saveFile1.data.devMode;
				Core.flags.activeGame = saveFile1.data.activeGame;
				Core.flags.tyr_HelpedArgoAtShop = saveFile1.data.tyr_HelpedArgoAtShop;
				Core.flags.tyr_DeadMomHasAmulet = saveFile1.data.tyr_DeadMomHasAmulet;
				Core.flags.tyrRuins_BarHasCoins = saveFile1.data.tyrRuins_BarHasCoins;
				Core.flags.tyrRuins_CorpseHasSword = saveFile1.data.tyrRuins_CorpseHasSword;
				Core.flags.tyrRuins_CorpseHasKey = saveFile1.data.tyrRuins_CorpseHasKey;
				Core.flags.tyrRuins_StorageHasVial = saveFile1.data.tyrRuins_StorageHasVial;
				Core.flags.tyrRuins_StorageHasWhiskey = saveFile1.data.tyrRuins_StorageHasWhiskey;
				Core.flags.tyrRuins_CartHasPurse = saveFile1.data.tyrRuins_CartHasPurse;
				Core.flags.tyrRuins_CartHasVial = saveFile1.data.tyrRuins_CartHasVial;
				Core.flags.tyrRuins_StorageDoorLocked = saveFile1.data.tyr_StorageDoorLocked;
				Core.flags.player_HasISTKey = saveFile1.data.player_HasISTKey;
				Core.flags.player_HasOldSword = saveFile1.data.player_HasOldSword;
				//EVENTHANDLER.AS DATA
				Core.events.currEvent = saveFile1.data.currEvent;
				//BAGHANDLER.AS DATA
				Core.bag.sm_HPvial = saveFile1.data.smHPVial;
				Core.bag.med_HPvial = saveFile1.data.medHPVial;
				Core.bag.lg_HPvial = saveFile1.data.lgHPVial;
				Core.bag.sm_MPvial = saveFile1.data.smMPVial;
				Core.bag.med_MPvial = saveFile1.data.medMPVial;
				Core.bag.lg_MPvial = saveFile1.data.lgMPVial;
				Core.bag.sigils = saveFile1.data.sigils;
				Core.bag.divCards = saveFile1.data.divineCards;
				Core.bag.lunarCards = saveFile1.data.lunarCards;
				Core.bag.keyRing = saveFile1.data.keys;
				Core.bag.questItems = saveFile1.data.questItems;
				Core.bag.keyStones = saveFile1.data.keyStones;
				Core.bag.keepsakes = saveFile1.data.keepsakes;
				Core.bag.chestArmor = saveFile1.data.chestArmor;
				Core.bag.legArmor = saveFile1.data.legArmor;
				Core.bag.feetArmor = saveFile1.data.feetArmor;
				Core.bag.handArmor = saveFile1.data.handArmor;
				//PLAYER.AS DATA
				//Base data
				Player.name = saveFile1.data.pc_Name;
				Player.gender = saveFile1.data.pc_Gender;
				Player.fertile = saveFile1.data.pc_Fertility;
				Player.lvl = saveFile1.data.pc_Level;
				//Combat data
				Player.str = saveFile1.data.pc_Strength;
				Player.endr = saveFile1.data.pc_Endurance;
				Player.dex = saveFile1.data.pc_Dexterity;
				Player.agi = saveFile1.data.pc_Agility;
				Player.wis = saveFile1.data.pc_Wisdom;
				Player.chrs = saveFile1.data.pc_Charisma;
				Player.HP = saveFile1.data.pc_Health;
				Player.MP = saveFile1.data.pc_Mana;
				Player.SP = saveFile1.data.pc_Stamina;
				//Personality data
				Player.aggro = saveFile1.data.pc_Aggression;
				Player.passi = saveFile1.data.pc_Passive;
				Player.noble = saveFile1.data.pc_Noble;
				Player.self = saveFile1.data.pc_Selfish;
				Player.subDom = saveFile1.data.pc_SubDom
				//Alignment
				Player.resFaction = saveFile1.data.resistance;
				Player.bl_arFaction = saveFile1.data.blackArmy;
				Player.neuFaction = saveFile1.data.neutral;
				//Body Scores
				Player.muscles = saveFile1.data.pc_Muscles;
				Player.fat = saveFile1.data.pc_Fat;
				Player.flexi = saveFile1.data.pc_Flexibility;
				Player.gendAppear = saveFile1.data.pc_PhysicalGender;
				Player.height = saveFile1.data.pc_Height;
				//Body Variables
				Player.milkProd = saveFile1.data.pc_MilkProduction;
				Player.cumProd = saveFile1.data.pc_CumProduction;
				Player.nipLength = saveFile1.data.pc_NippleLength;
				Player.penisLength = saveFile1.data.pc_PenisLength;
				Player.penisGirth = saveFile1.data.pc_PenisGirth;
				Player.penisArea = saveFile1.data.pc_PenisArea;
				Player.testeSize = saveFile1.data.pc_TesticleSize;
				Player.clitLength = saveFile1.data.pc_ClitLength;
				Player.vaginaDepth = saveFile1.data.pc_VaginaDepth;
				Player.vaginaGirth = saveFile1.data.pc_VagainaGirth;
				Player.vaginaWet = saveFile1.data.pc_VaginaWetness;
				Player.assDepth = saveFile1.data.pc_AnalDepth;
				Player.assGirth = saveFile1.data.pc_AnalGirth;
				Player.assArea = saveFile1.data.pc_AnalArea;
				Player.assCap = saveFile1.data.pc_AnalVolume;
				Player.wombCap = saveFile1.data.pc_WombCapacity;
				Player.breastCap = saveFile1.data.pc_BreastCapacity;
				Player.ballCap = saveFile1.data.pc_BallCapacity;
				Player.hairLength = saveFile1.data.pc_HairLength;
				//Body Slot Data
				Player.breastSize = saveFile1.data.pc_BreastSize;
				Player.cumType = saveFile1.data.pc_CumType;
				Player.earType = saveFile1.data.pc_EarType;
				Player.feetType = saveFile1.data.pc_FeetType;
				Player.legType = saveFile1.data.pc_LegType;
				Player.milkType = saveFile1.data.pc_MilkType;
				Player.nipType = saveFile1.data.pc_NippleType;
				Player.penisType = saveFile1.data.pc_PenisType;
				Player.sheathType = saveFile1.data.pc_SheathType;
				Player.skinType = saveFile1.data.pc_SkinType;
				Player.tailType = saveFile1.data.pc_TailType;
				Player.tongueType = saveFile1.data.pc_TongueType;
				Player.vagType = saveFile1.data.pc_VaginaType;
				Player.wingType = saveFile1.data.pc_WingType;
				//Coloration Data
				Player.eyeColor = saveFile1.data.pc_EyeColor;
				Player.furColor = saveFile1.data.pc_FurColor;
				Player.hairColor = saveFile1.data.pc_HairColor;
				Player.scaleColor = saveFile1.data.pc_ScaleColor;
				Player.skinColor = saveFile1.data.pc_SkinColor;
				//Misc. Data & Flags
				Player.isVirgin = saveFile1.data.pc_Virginity;
				//Equipment Slot Data
				Player.chestSlot = saveFile1.data.pc_WearingChest;
				Player.feetSlot = saveFile1.data.pc_WearingFeet;
				Player.handSlot = saveFile1.data.pc_WearingHands;
				Player.legSlot = saveFile1.data.pc_WearingLegs;
				Player.weaponSlot = saveFile1.data.pc_Weapon;
			}
		}

	}
	
}
