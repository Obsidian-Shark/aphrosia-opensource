package draconis.handlers {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 */
	
	import draconis.*;
	
	dynamic public class EventHandler {
		public var currEvent:Number = 0;
		public var holdEvent:Number = 0;

		public function EventHandler() {
			// constructor code
		}
		//Start a new game... duh
		public function newGame():void {
			Core.flags.activeGame = true;
			Core.screens.game.btnInventory.visible = false;
			Core.screens.game.btnProfile.visible = false;
			Core.screens.game.btnSaveGame.visible = false;
			Core.screens.game.pcPane.visible = false;
			Core.bag.flushInven();
			Core.flags.resetFlags();
			Story.mainStory(1);
		}
		//Start a new character as a female
		public function isFemale():void {
			//Stats
			Core.pc.agi = 12;
			Core.pc.chrs = 10;
			Core.pc.dex = 12;
			Core.pc.endr = 8;
			Core.pc.exp = 0;
			Core.pc.lvl = 1;
			Core.pc.str = 8;
			Core.pc.wis = 10
			//Body variables
			Core.pc.fertile = 75;
			Core.pc.gendAppear = 0;
			Core.pc.gender = 2;
			Core.pc.muscles = 10;
			Core.pc.fat = 2;
			Core.pc.flexi = 5;
			//Body Slots
			Core.pc.cumType.Normal = true;
			Core.pc.earType.Human = true;
			Core.pc.feetType.Human = true;
			Core.pc.hairCut.ShoulderLength = true;
			Core.pc.hairType.Hair = true;
			Core.pc.legType.Biped = true;
			Core.pc.milkType.Normal = true;
			Core.pc.nipType.Single = true;
			Core.pc.vagType.Human = true;
			//Coloring
			Core.pc.eyeColor.Brown = true;
			Core.pc.hairColor.Brown = true;
			Core.pc.skinColor.Brown = true;
			//Measurements... in inches
			Core.pc.assDepth = 10;
			Core.pc.assGirth = 1.5;
			Core.pc.breastSize.B = true;
			Core.pc.clitLength = 0.5;
			Core.pc.height = 65;
			Core.pc.nipLength = 0.1;
			Core.pc.vaginaDepth = 4;
			Core.pc.vaginaGirth = 1.5;
			Core.pc.vaginaArea =  Math.PI * Math.pow(Core.pc.vaginaGirth, 2) * Core.pc.vaginaDepth / 4;;
			Core.pc.vaginaWet = 1;
			//Fluid numbers... in mL
			Core.pc.cumProd = 150;
			Core.pc.milkProd = 200;
			//Personality
			Core.pc.aggro = 0;
			Core.pc.noble = 0;
			Core.pc.passi = 0;
			Core.pc.self = 0;
			Core.pc.subDom = 50;
			//Alignments
			Core.pc.resFaction = 0;
			Core.pc.bl_arFaction = 0;
			Core.pc.neuFaction = 50;
			//Flags
			Core.pc.isVirgin = true;
			killMale();
		}
		//Start new character as Male
		public function isMale():void {
			//Stats
			Core.pc.agi = 9;
			Core.pc.chrs = 10;
			Core.pc.dex = 8;
			Core.pc.endr = 12;
			Core.pc.exp = 0;
			Core.pc.lvl = 1;
			Core.pc.str = 12;
			Core.pc.wis = 10
			//Body variables
			Core.pc.fertile = 75;
			Core.pc.gendAppear = 100;
			Core.pc.gender = 2;
			Core.pc.muscles = 25;
			Core.pc.fat = 10;
			Core.pc.flexi = 0;
			//Body Slots
			Core.pc.cumType.Normal = true;
			Core.pc.earType.Human = true;
			Core.pc.feetType.Human = true;
			Core.pc.hairCut.Short = true;
			Core.pc.hairType.Hair = true;
			Core.pc.legType.Biped = true;
			Core.pc.milkType.Normal = true;
			Core.pc.nipType.Single = true;
			Core.pc.penisType.Human = true;
			Core.pc.sheathType.Foreskin = true;
			//Coloring
			Core.pc.eyeColor.Brown = true;
			Core.pc.hairColor.Brown = true;
			Core.pc.skinColor.Fair = true;
			//Measurements... in inches
			Core.pc.assDepth = 10;
			Core.pc.assGirth = 1.5;
			Core.pc.breastSize.Flat = true;
			Core.pc.height = 72;
			Core.pc.nipLength = 0.1;
			Core.pc.penisGirth = 1;
			Core.pc.penisLength = 5;
			Core.pc.penisArea =  Math.PI * Math.pow(Core.pc.penisGirth, 2) * Core.pc.penisLength / 4;;
			Core.pc.testeSize = 1.5;
			//Fluid numbers... in mL
			Core.pc.cumProd = 150;
			Core.pc.milkProd = 50;
			Core.pc.ballCap = 150;
			//Personality
			Core.pc.aggro = 0;
			Core.pc.noble = 0;
			Core.pc.passi = 0;
			Core.pc.self = 0;
			Core.pc.subDom = 50;
			//Alignments
			Core.pc.resFaction = 0;
			Core.pc.bl_arFaction = 0;
			Core.pc.neuFaction = 50;
			//Flags
			Core.pc.isVirgin = true;
			killFemale();
		}
		//Increase Player's aggressive score
		public function addAggro():void {
			Core.pc.aggro += 1;
			if (Core.pc.passi == 0) Core.pc.passi = 0;
			else Core.pc.passi -= 1;
		}
		//Increase Player's passive score... for betaness
		public function addPassi():void {
			Core.pc.passi += 1;
			if (Core.pc.aggro == 0) Core.pc.aggro = 0;
			else Core.pc.aggro -= 1;
		}
		//Kill Female variables for new character
		private function killFemale() {
			Core.pc.wombCap = 0;
			Core.pc.vaginaDepth = 0;
			Core.pc.vaginaGirth = 0;
			Core.pc.vaginaWet = 0;
			Core.pc.clitLength = 0;
		}
		//Kill Male variables for new character
		private function killMale() {
			Core.pc.penisGirth = 0;
			Core.pc.penisLength = 0;
			Core.pc.testeSize = 0;
			Core.pc.ballCap = 0;
		}
		//Save the Player's name
		public function setPlayerName():void {
			Core.pc.name = String(Core.screens.game.nameInput.text);
			Core.screens.game.nameInput.visible = false;
			Core.screens.game.pcPane.nameText.text = "" + Core.pc.name + "";
		}

	}
	
}
