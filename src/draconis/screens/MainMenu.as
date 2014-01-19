package draconis.screens
{

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.text.TextField;
	
	import draconis.Core;


	public class MainMenu extends MovieClip {
		public var updateText:TextField = new TextField();

		public function MainMenu()
		{
			// constructor code
			this.addEventListener(Event.ADDED_TO_STAGE, initialize);
		}
		private function initialize(e:Event):void
		{
			//Default button visibility
			btnNewGame.visible = true;
			btnLoadGame.visible = true;
			btnCredits.visible = true;
			btnDevMode.visible = true;
			if (Core.flags.activeGame) {
				btnResume.visible = true;
			}
			else {
				btnResume.visible = false;
			}
			devMode_Indc.visible = false;
			//Deactivate text fields
			btnCredits.btnText.mouseEnabled = false;
			btnDevMode.btnText.mouseEnabled = false;
			btnLoadGame.btnText.mouseEnabled = false;
			btnNewGame.btnText.mouseEnabled = false;
			btnResume.btnText.mouseEnabled = false;
			updateText.mouseEnabled = false;
			//Set default button labels
			btnCredits.btnText.text = "Credits";
			btnDevMode.btnText.text = "Dev Mode";
			btnLoadGame.btnText.text = "Load Game";
			btnNewGame.btnText.text = "New Game";
			btnResume.btnText.text = "Resume";
			Core.buttons.initiMain();
		}

	}

}