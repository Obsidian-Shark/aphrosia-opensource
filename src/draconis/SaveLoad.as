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
		public function saveData(slot:String):Boolean {
			var saveFile = SharedObject.getLocal(slot);
			return false;
		}
		public function loadData(slot:String):Boolean {
			var saveFile = SharedObject.getLocal(slot);
			return false;
		}
	}
	
}
