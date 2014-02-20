package draconis {
	
	import flash.net.SharedObject;
	import draconis.Core;
	import draconis.Player;
	import draconis.handlers.*;
	import draconis.locations.city.*;
	
	public class SaveLoad {

		public function SaveLoad() {
			// constructor code
		}
		public static function saveData(slot:String):Boolean {
			var saveFile = SharedObject.getLocal(slot);
			saveFile.data.exists = true;
			saveFile.data.player = Player.concat();
			saveFile.data.flags = Core.flags.concat();
			saveFile.data.events = Core.events.concat();
			if (saveFile.flush()) return true;
			return false;
		}
		public static function loadData(slot:String):Boolean {
			var saveFile = SharedObject.getLocal(slot);
			if (saveFile.data.exists) {
				Player = saveFile.data.player.concat();
				Core.flags = saveFile.data.flags.concat();
				Core.events = saveFile.data.events.concat();
				saveFile.flush();
				return true;
			}
			return false;
		}
	}
	
}
