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
		public var penisArea:Number = 0;
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
		//Body Slots
		public var breastSize:Object = { Flat:false, A:false, B:false, C:false, D:false, DD:false };
		public var cumType:Object = { Honey:false, Normal:false };
		public var earType:Object = { Canine:false, Elven:false, Equine:false, Fox:false, Human:false };
		public var feetType:Object = { Clove:false, Hooves:false, Human:false, Paws:false, Webbed:false };
		public var hairType:Object = {Feather:false, Hair:false, Petals:false}
		public var hornType:Object = { Antlers:false, Demon:false, Draconian:false, Unicorn:false };
		public var legType:Object = { Biped:false, Centaur:false, Digi:false, Mer:false, Naga:false, Sphynx:false };
		public var milkType:Object = { Honey:false, Nectar:false, Normal:false };
		public var nipType:Object = { Single:false, Udder:false };
		public var penisType:Object = { Canine:false, Cervae:false,  Draconian:false, Equine:false, Human:false, Snake:false };
		public var sheathType:Object = { Foreskin:false, Internal:false, None:false };
		public var skinType:Object = { Flesh:false, Fur:false, Scale:false, Shark:false };
		public var tailType:Object = { Draconian:false, Feline:false, Fox:false, Horse:false,  None:false, Shark:false };
		public var tongueType:Object = { Feline:false, Frog:false, Human:false, Snake:false };
		public var vagType:Object = { Draconian:false, Human:false };
		public var wingType:Object = { DorsalFin:false, Feathered:false, Leathery:false, None:false };
		//Coloration
		public var eyeColor:Object = { Brown:false };
		public var furColor:Object = {};
		public var hairColor:Object = { Auburn:false, Black:false, Blonde:false, Brown:false, Grey:false, Silver:false, White:false };
		public var scaleColor:Object = { Brown:false, Green:false, White:false };
		public var skinColor:Object = { Fair:false };
		//Misc
		public var hairCut:Object = {Bald:false, BuzzCut:false, Long:false, Mohawk:false, Pixie:false, Short:false, ShoulderLength:false };
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
		public function refreshCalc():void {
			//Male Parts
			Core.pc.penisArea = Math.PI * Math.pow(Core.pc.penisGirth, 2) * Core.pc.penisLength / 4;
			Core.pc.ballCap = Math.PI * Math.pow(Core.pc.testeSize, 3) / 6
			//Female Parts
			Core.pc.vaginaArea = Math.PI * Math.pow(Core.pc.vaginaGirth, 2) * Core.pc.vaginaDepth / 4;
			//General Parts
			Core.pc.assArea = Math.PI * Math.pow(Core.pc.assGirth, 2) * Core.pc.assDepth / 4;
		}
		//BODY DESCRIPTIONS
		//Penis descrption
		public function penis():String {
			var descript:String = "";
			var penisL:Number = Core.pc.penisLength;
			var penisG:Number = Core.pc.penisGirth;
			var rand:Number;
			//Girth Descriptor... displays 25% of the time
			if (int(Math.random() * 100) > 75) {
				if (penisG < 1.5) descript += "thin ";
				if (penisG >= 1.5 && penisG < 2) descript += "thick ";
				if (penisG >= 2 && penisG < 3) descript += "fat ";
				if (penisG >= 3) descript += "girthy ";
			}
			//Length Descriptor... displays 25% of the time
			if (int(Math.random() * 100) > 75) {
				if (penisL < 3) descript += "micro";
				if (penisL >= 3 && penisL < 5) descript += "stubby ";
				if (penisL >= 5 && penisL < 7) descript += "average-length ";
				if (penisL >= 7 && penisL < 10) descript += "long ";
				if (penisL >= 10 && penisL < 14) descript += "large ";
				if (penisL >= 14 && penisL < 18) descript += "massive ";
				if (penisL >= 18) descript += "gigantic";
			}
			//Words for Penis... that don't sound retarded
			rand = int(Math.random() * 8);
			if (rand == 0) descript += "penis";
			if (rand == 1) descript += "cock";
			if (rand == 2) descript += "dick";
			if (rand == 3) descript += "dong";
			if (rand == 4) descript += "member";
			if (rand == 5) descript += "shaft";
			if (rand == 6) descript += "prick";
			if (rand == 7) descript += "knob";
			//Return String
			return descript;
		}
		//Testicle description
		public function testes():String {
			var descript:String = "";
			var balls:Number = Core.pc.testeSize;
			var rand:Number;
			//Ball Size... displays 75% of the time
			if (int(Math.random() * 100) > 25) {
				if (balls < 1) descript += "tiny ";
				if (balls >= 1 && balls < 2) descript += "normal-sized ";
				if (balls >= 2 && balls < 3) descript += "swollen ";
				if (balls >= 3) descript += "massive ";
			}
			//Words for Testicles... which isn't that many
			rand = int(Math.random() * 4);
			if (rand == 0) descript += "testicles";
			if (rand == 1) descript += "testes";
			if (rand == 2) descript += "balls";
			if (rand == 3) descript += "nut-sack";
			return descript;
		}
		//Vagina description
		public function vagina():String {
			var rand:Number;
			var descript:String = "";
			var vaginaD:Number = Core.pc.vaginaDepth;
			var vaginaG:Number = Core.pc.vaginaGirth;
			var vaginaW:Number = Core.pc.vaginaWet;
			//words of Vagina... which isn't that many either
			rand = int(Math.random() * 4);
			if (rand == 0) descript += "vagina";
			if (rand == 1) descript += "pussy";
			if (rand == 2) descript += "cunny";
			if (rand == 3) descript += "cunt";
			return descript;
		}
		//Clit description
		public function clit():String {
			var descript:String = "";
			var clit:Number = Core.pc.clitLength;
			var rand:Number;
			//Words for Clit... which isn't much
			rand = int(Math.random() * 2);
			if (rand == 0) descript += "clitoris";
			if (rand == 1) descript += "clit";
			if (rand == 2) descript += "clitty";
			return descript;
		}
		//Ass-hole description
		public function buttHole():String {
			var descript:String = "";
			var holeG:Number = Core.pc.assGirth;
			var holeL:Number = Core.pc.assDepth;
			var rand:Number;
			//Anal width descriptor... displays 50% of the time
			if (int(Math.random() * 100) > 50) {
				if (holeG < 1) descript += "puckered ";
				if (holeG >= 1 && holeG < 2) descript += "tight ";
				if (holeG >= 2 && holeG < 3) descript += "loose ";
				if (holeG >= 3) descript += "gaping ";
			}
			//Words for butt hole... without sounding corny
			rand = int(Math.random() * 4);
			if (rand == 0) descript += "rectum";
			if (rand == 1) descript += "back door";
			if (rand == 2) descript += "ass-hole";
			if (rand == 3) descript += "hole";
			return descript;
		}
		//Breast description
		public function breasts():String {
			var descript:String = "";
			var rand:Number;
			//Breast size... displays 50% of the time
			if (int(Math.random() * 100) > 50) {
				if (Core.pc.breastSize.Flat) {
					descript += "flat ";
				}
				if (Core.pc.breastSize.A) {
					descript += "small ";
				}
				if (Core.pc.breastSize.B) {
					descript += "ample ";
				}
			}
			//Words for breasts
			rand = int(Math.random() * 3);
			if (rand == 0) descript += "breasts";
			if (rand == 1) descript += "boobs";
			if (rand == 2) descript += "tits";
			return descript;
		}
		public function nipples():String {
			var descript:String = "";
			var nipL:Number = Core.pc.nipLength;
			var rand:Number;
			//Nipple Length... displays 40% of the time
			if (int(Math.random() * 100) > 60) {
				if (nipL < 0.5) descript += "flat ";
				if (nipL >= 0.5 && nipL < 1) descript += "pert ";
				if (nipL >= 1) descript += "long ";
			}
			//Words for nipples
			rand = int(Math.random() * 4);
			if (rand == 0) descript += "nipples";
			if (rand == 1) descript += "nips";
			if (rand == 3) descript += "teats";
			if (rand == 4) descript += "buds";
			return descript;
		}
		//Player Pronoun him/her/it... based on physical gender appearance
		public function pronoun1():String {
			var descript:String = "";
			var gender:Number = Core.pc.gendAppear;
			if (gender >= 66) descript += "him";
			if (gender <= 33) descript += "her";
			if (gender < 66 && gender > 33) descript += "... it";
			return descript;
		}
	}
	
}
