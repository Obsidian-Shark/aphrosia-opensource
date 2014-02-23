package draconis {
	
	/**
	 * ...
	 * @author Obsidian Shark
	 */
	
	import draconis.*;
	
	dynamic public class Player {
		//Base Stats
		public var name:String = "";
		public var gender:int = 0;
		public var fertile:Number = 0;
		public var lvl:int = 0;
		public var exp:int = 0;
		//Combat stats
		public var str:int = 0; //Strength
		public var endr:int = 0; //Endurance
		public var dex:int = 0; //Dexterity
		public var agi:int = 0; //Agility
		public var wis:int = 0; //Wisdom
		public var chrs:int = 0; //Charisma
		public var HP:int = 0;
		public var MP:int = 0;
		public var SP:int = 0;
		//Personality scores
		public var aggro:int = 0; //Aggression
		public var passi:int = 0; //Passive
		public var noble:int = 0; //Noble
		public var self:int = 0; //Selfish
		public var subDom:int = 0; //0-33 = Submissin, 34-65 = Switch, 66-100 = Dominant
		//Alignment
		public var resFaction:int = 0; //Resistance
		public var bl_arFaction:int = 0; //Black Army
		public var neuFaction:int = 0; //Neutral
		//Body Scores
		public var muscles:int = 0;
		public var fat:int = 0;
		public var flexi:int = 0;
		public var gendAppear:int = 0; //0-33 = Female, 34-65 = Androgynous, 66-100 = Male
		public var height:int = 0;
		//Body Variables
		public var milkProd:int = 0;
		public var cumProd:int = 0;
		public var nipLength:Number = 0;
		public var penisLength:Number = 0;
		public var penisGirth:Number = 0;
		public var penisArea:Number = Math.PI * Math.pow(penisGirth, 2) * penisLength / 4;;
		public var testeSize:Number = 0;
		public var clitLength:Number = 0;
		public var vaginaDepth:Number = 0;
		public var vaginaGirth:Number = 0;
		public var vaginaWet:Number = 0;
		public var vaginaArea:Number = 0;
		public var assDepth:Number = 0;
		public var assGirth:Number = 0;
		public var assArea:Number = 0;
		public var assCap:Number = 0;
		public var wombCap:Number = 0;
		public var breastCap:Number = 0; //Breast-milk capacity
		public var ballCap:Number = 0; //Testicle capacity
		public var hairLength:Number = 0;
		//Body Slots
		public var breastSize:Object = { Flat:false, A:false, B:false };
		public var cumType:Object = { Normal:false };
		public var earType:Object = { Canine:false, Elven:false, Equine:false, Fox:false, Human:false };
		public var feetType:Object = { Human:false };
		public var hornType:Object = { Antlers:false, Unicorn:false };
		public var legType:Object = { Biped:false, Centaur:false, Digi:false, Mer:false, Naga:false, Sphynx:false };
		public var milkType:Object = { Normal:false };
		public var nipType:Object = { Single:false };
		public var penisType:Object = { Canine:false, Cervae:false,  Draconian:false, Equine:false, Human:false };
		public var sheathType:Object = { Foreskin:false, Internal:false, None:false };
		public var skinType:Object = { Flesh:false, Fur:false, Scale:false };
		public var tailType:Object = { None:false };
		public var tongueType:Object = { Human:false };
		public var vagType:Object = { Human:false };
		public var wingType:Object = { Feathered:false, Leathery:false, None:false };
		//Coloration
		public var eyeColor:Object = { Brown:false };
		public var furColor:Object = {};
		public var hairColor:Object = { Brown:false };
		public var scaleColor:Object = { };
		public var skinColor:Object = { Fair:false };
		//Misc
		public var isVirgin:Boolean = false;
		//Equipment Slots
		public var accSlot:String = "";
		public var chestSlot:String = "";
		public var feetSlot:String = "";
		public var handSlot:String = "";
		public var legSlot:String = "";
		public var ringSlot:String = "";
		public var weaponSlot:String = "";
		
		public function Player() {
			// constructor code
			
		}
		//Refresh calculations
		public static function refreshCalc():void {
			//Male Parts
			Core.pc.penisArea = Math.PI * Math.pow(Core.pc.penisGirth, 2) * Core.pc.penisLength / 4;
			Core.pc.ballCap = Math.PI * Math.pow(Core.pc.testeSize, 3) / 6
			//Female Parts
			Core.pc.vaginaArea = Math.PI * Math.pow(Core.pc.vaginaGirth, 2) * Core.pc.vaginaDepth / 4;
			//General Parts
			Core.pc.assArea = Math.PI * Math.pow(Core.pc.assGirth, 2) * Core.pc.assDepth / 4;
		}
	}
	
}
