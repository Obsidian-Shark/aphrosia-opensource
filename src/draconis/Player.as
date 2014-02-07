package draconis {
	
	import draconis.Core;
	
	dynamic public class Player {
		//Base Stats
		public static var name:String = "";
		public static var gender:int = 0;
		public static var fertile:Number = 0;
		public static var lvl:int = 0;
		public static var exp:int = 0;
		//Combat stats
		public static var str:int = 0; //Strength
		public static var endr:int = 0; //Endurance
		public static var dex:int = 0; //Dexterity
		public static var agi:int = 0; //Agility
		public static var wis:int = 0; //Wisdom
		public static var chrs:int = 0; //Charisma
		public static var HP:int = 0;
		public static var MP:int = 0;
		public static var SP:int = 0;
		//Personality scores
		public static var aggro:int = 0; //Aggression
		public static var passi:int = 0; //Passive
		public static var noble:int = 0; //Noble
		public static var self:int = 0; //Selfish
		public static var subDom:int = 0; //0-33 = Submissin, 34-65 = Switch, 66-100 = Dominant
		//Alignment
		public static var resFaction:int = 0; //Resistance
		public static var bl_arFaction:int = 0; //Black Army
		public static var neuFaction:int = 0; //Neutral
		//Body Scores
		public static var muscles:int = 0;
		public static var fat:int = 0;
		public static var flexi:int = 0;
		public static var gendAppear:int = 0; //0-33 = Female, 34-65 = Androgynous, 66-100 = Male
		public static var height:int = 0;
		//Body Variables
		public static var milkProd:int = 0;
		public static var cumProd:int = 0;
		public static var nipLength:Number = 0;
		public static var penisLength:Number = 0;
		public static var penisGirth:Number = 0;
		public static var penisArea:Number = Math.PI * Math.pow(penisGirth, 2) * penisLength / 4;;
		public static var testeSize:Number = 0;
		public static var clitLength:Number = 0;
		public static var vaginaDepth:Number = 0;
		public static var vaginaGirth:Number = 0;
		public static var vaginaWet:Number = 0;
		public static var vaginaArea:Number = 0;
		public static var assDepth:Number = 0;
		public static var assGirth:Number = 0;
		public static var assArea:Number = 0;
		public static var assCap:Number = 0;
		public static var wombCap:Number = 0;
		public static var breastCap:Number = 0; //Breast-milk capacity
		public static var ballCap:Number = 0; //Testicle capacity
		public static var hairLength:Number = 0;
		//Body Slots
		public static var breastSize:String = "";
		public static var cumType:String = "";
		public static var earType:String = "";
		public static var feetType:String = "";
		public static var legType:String = "";
		public static var milkType:String = "";
		public static var nipType:String = "";
		public static var penisType:String = "";
		public static var sheathType:String = "";
		public static var skinType:String = "";
		public static var tailType:String = "";
		public static var tongueType:String = "";
		public static var vagType:String = "";
		public static var wingType:String = "";
		//Coloration
		public static var eyeColor:String = "";
		public static var furColor:String = "";
		public static var hairColor:String = "";
		public static var scaleColor:String = "";
		public static var skinColor:String = "";
		//Misc
		public static var isVirgin:Boolean = false;
		//Equipment Slots
		public static var chestSlot:String = "";
		public static var feetSlot:String = "";
		public static var handSlot:String = "";
		public static var legSlot:String = "";
		public static var weaponSlot:String = "";
		
		public function Player() {
			// constructor code
			trace("Player instance created");
		}
		//Character Creation Functions
		public static function isMale():void {
			//Set body
			gender = 1;
			gendAppear = 100;
			fertile = 75;
			height = 72;
			hairLength = 6;
			hairColor = "brown";
			eyeColor = "brown";
			skinColor = "fair";
			//Body Slots
			cumType = "normal";
			earType = "human";
			feetType = "human";
			legType = "human";
			milkType = "normal";
			nipType = "normal";
			penisType = "human";
			sheathType = "foreskin";
			skinType = "flesh";
			tongueType = "human";
			//Body slot sizes
			penisLength = 5.5;
			penisGirth = 1.5;
			nipLength = 0.1;
			testeSize = 2;
			breastSize = "flat";
			nipLength = 0.2;
			assDepth = 10;
			assGirth = 1.5;
			//Fluid numbers
			cumProd = 150;
			milkProd = 100;
			//Body appearance meters
			muscles = 25;
			fat = 10;
			flexi = 0;
			//Set Stats
			lvl = 1;
			str = 12;
			endr = 12;
			dex = 10;
			agi = 10;
			wis = 12;
			chrs = 10;
			HP = endr * 2.5;
			SP = str * 1.5;
			MP = wis * 1.5;
			//Set Personality
			aggro = 0;
			passi = 0;
			noble = 0;
			passi = 0;
			subDom = 50;
			//Set Alignments
			resFaction = 0;
			bl_arFaction = 0;
			neuFaction = 0;
			//Set other stuff
			isVirgin = true;
			killFemale();
			refreshCalc();
		}
		public static function isFemale():void {
			//Set body
			gender = 2;
			gendAppear = 0;
			fertile = 75;
			height = 65;
			hairLength = 12;
			hairColor = "brown";
			eyeColor = "brown";
			skinColor = "fair";
			//Body Slots
			cumType = "normal";
			earType = "human";
			feetType = "human";
			legType = "human";
			milkType = "normal";
			nipType = "normal";
			vagType = "human";
			//Body slot sizes
			vaginaDepth = 4;
			vaginaGirth = 1.5;
			vaginaWet = 1;
			nipLength = 0.1;
			testeSize = 2;
			breastSize = "B";
			nipLength = 0.2;
			assDepth = 10;
			assGirth = 1.5;
			//Fluid numbers
			cumProd = 150;
			milkProd = 200;
			//Body appearance meters
			muscles = 10;
			fat = 2;
			flexi = 5;
			//Set Stats
			lvl = 1;
			str = 10;
			endr = 10;
			dex = 12;
			agi = 12;
			wis = 12;
			chrs = 10;
			HP = endr * 2.5;
			SP = str * 1.5;
			MP = wis * 1.5;
			//Set Personality
			aggro = 0;
			passi = 0;
			noble = 0;
			passi = 0;
			subDom = 50;
			//Set Alignments
			resFaction = 0;
			bl_arFaction = 0;
			neuFaction = 0;
			//Set other stuff
			isVirgin = true;
			lvl = 1;
			exp = 0;
			killMale();
		}
		//Kill Funcitons
		//clear male-based stats
		private static function killMale():void {
			penisType = "";
			penisLength = 0;
			penisGirth = 0;
			testeSize = 0;
			ballCap = 0;
			sheathType = "";
		}
		//Clear female-based stats
		private static function killFemale():void {
			vaginaDepth = 0;
			vaginaGirth = 0;
			clitLength = 0;
		}
		//Refresh calculations
		public static function refreshCalc():void {
			//Male Parts
			penisArea = Math.PI * Math.pow(penisGirth, 2) * penisLength / 4;
			ballCap = Math.PI * Math.pow(testeSize, 3) / 6
			//Female Parts
			vaginaArea = Math.PI * Math.pow(vaginaGirth, 2) * vaginaDepth / 4;
			//General Parts
			assArea = Math.PI * Math.pow(assGirth, 2) * assDepth / 4;
		}
		//Descriptor Functions
		public static function pcGender():String {
			var pcGender:String = "";
			if (gender == 1) pcGender = "male";
			if (gender == 2) pcGender = "female";
			if (gender == 3) pcGender = "hermaphrodite";
			if (gender == 4) pcGender = "none";
			return pcGender;
		}
		public static function pcSex():String {
			var pcSex:String = "";
			if (penisArea >= .1 || testeSize >= .1 || gendAppear >= 66) pcSex = "male";
			if (vaginaArea >= .1 || clitLength >= .1 || gendAppear <= 33) pcSex = "female";
			return pcSex;
		}
		public static function pcHeight():String {
			var height:String = "";
			height = "" + Math.round(Player.height / 12) + " feet, "+Player.height % 12+" inches";
			return height;
		}
		public static function pcPron1():String {
			var pronoun1:String = "";
			if (gender == 1) pronoun1 += "he";
			if (gender == 2) pronoun1 += "she";
			return pronoun1;
		}
		public static function pcPron2():String {
			var pronoun2:String = "";
			if (gender == 1) pronoun2 += "his";
			if (gender == 2) pronoun2 += "her";
			return pronoun2;
		}
		public static function pcPron3():String  {
			var pronoun3:String = "";
			if (gender == 1) pronoun3 += "him";
			if (gender == 2) pronoun3 += "her";
			return pronoun3;
		}
		//Describe the Player's penis
		public static function penisDescript():String {
			var penis:String = ""
			var lng:Number = penisLength;
			var grt:Number = penisGirth;
			var rand:Number = 0
			//Girth Prefix Descript - 40% display rate
			if (int(Math.random() * 100) > 60) {
				if (penisType == "Human") {
					if (grt < 1.5) penis += "skinny ";
					if (grt >= 1.5 && grt < 2) penis += "thick ";
					if (grt >= 2 && grt < 3) penis += "fat ";
					if (grt >= 3) penis += "meaty ";
				}
			}
			//Length Prefix Descript - 40% display rate
			if (int(Math.random() * 100) > 60) {
				if (lng < 3) penis += "micro ";
				if (lng >= 3 && lng < 5) penis += "small ";
				if (lng >= 5 && lng < 7) penis += "average-sized ";
				if (lng >= 7 && lng < 10) penis += "large ";
				if (lng >= 10 && lng < 12) penis += "massive ";
				if (lng >= 12 && lng < 18) penis += "gigantic ";
				if (lng > 18) penis += "gargantuan ";
			}
			//Human Cock Descript
			rand = int(Math.random() * 10);
			if (penisType == "Human") {
				if (rand == 0) penis += "penis ";
				if (rand == 1) penis += "dick ";
				if (rand == 2) penis += "cock ";
				if (rand == 3) penis += "prick ";
				if (rand == 4) penis += "dong ";
				if (rand == 5) penis += "shaft ";
				if (rand == 6) penis += "pecker ";
				if (rand == 7) penis += "phallus ";
				if (rand == 8) penis += "member ";
				if (rand == 9) penis += "meat rod ";
				if (rand == 10) penis += "manhood ";
			}
			return penis;
		}
		//Describe the Player's balls
		public static function ballDescript():String {
			var balls:String = "";
			var size:Number = testeSize;
			var cap:Number = ballCap;
			var rand:Number = 0;
			//Size Prefix Descript - 50% display rate
			if (int(Math.random() * 100) > 50) {
				if (size < 2) balls += "small ";
				if (size >= 2 && size < 3) balls += "normal-sized ";
				if (size >= 3 && size < 5) balls += "large ";
			}
			return balls;
		}
		//Describe the Player's vagina
		public static function vaginaDescript():String {
			var vagina:String = "";
			var dep:Number = vaginaDepth;
			var grt:Number = vaginaGirth;
			var wet:Number = vaginaWet;
			var rand:Number = 0;
			//Girth Prefix Descript - 40% display rate
			if (int(Math.random() * 100) > 60) {
				if (grt < 1) vagina += "tight ";
				if (grt >= 1 && grt < 2) vagina += "loose ";
				if (grt >= 2 && grt < 3) vagina += "very loose ";
				if (grt > 3 && grt < 4) vagina += "wide ";
				if (grt > 4) vagina += "gaping-wide ";
			}
			//Depth Prefix Descript - 40% display rate
			if (int(Math.random() * 100) > 60) {
				if (dep < 3) vagina += "shallow ";
				if (dep >= 3 && dep < 6) vagina += "deep ";
				if (dep >= 6 && dep < 12) vagina += "very deep ";
				if (dep > 12) vagina += "endless ";
			}
			//Wetness Prefix Descript - 30% display rate
			if (int(Math.random() * 100) > 70) {
				if (wet == 0) vagina += "dry ";
				if (wet == 1) vagina += "damp ";
				if (wet == 2) vagina += "wet ";
				if (wet == 3) vagina += "drooling ";
			}
			//Human Vagina Descript
			rand = int(Math.random() * 5);
			if (rand == 0) vagina += "vagina ";
			if (rand == 1) vagina += "cunt ";
			if (rand == 2) vagina += "cunny ";
			if (rand == 3) vagina += "pussy ";
			if (rand == 4) vagina += "snatch ";
			if (rand == 5) vagina += "womanhood ";
			return vagina;			
		}
		//Describe the Player's clit
		public static function clitDescript():String {
			var clit:String = "";
			var lng:Number = clitLength;
			var rand:Number = 0;
			//50% display rate
			if (int(Math.random() * 100) > 50) {
				if (lng < .5) clit += "miniscule ";
				if (lng >= .5 && lng < 1) clit += "normal-sized ";
				if (lng >= 1 && lng < 2) clit  += "large ";
				if (lng >= 2) clit += "psuedo-cock ";
			}
			return clit;
		}
	}
	
}
