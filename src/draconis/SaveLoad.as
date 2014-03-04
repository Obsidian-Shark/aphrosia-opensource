package draconis {
	
	/**
	 * ...
	 * @author Obsidian Shark...
	 * @author Void Director...
	 */
	
	import flash.net.SharedObject;
	import flash.utils.describeType
	
	import draconis.*;
	import draconis.handlers.*;
	import draconis.locations.city.*;
	
	public class SaveLoad {

		public function SaveLoad() {
			// constructor code
		}
		//Developed by Void Director
		//The purpose of this object is to iterate over all the variables of a static object like Player and copy them into the property of an Object.
		//storeName is a string that defines the name of the property to store objects into
		public static function addStaticObject(storeName:String, to:Object, from:Object):void {
			var variables:XMLList = describeType(from).descendants("variable");
			to[storeName] = { };
			for each(var item:XML in variables) {
				to[storeName][item.attribute("name")] = from[item.attribute("name")];
			}
		}
		public static function saveData(slot:String):Boolean {
			var saveFile = SharedObject.getLocal(slot);
			saveFile.data.exist = true;
			//save all of Player class variables
			addStaticObject("player", saveFile.data, Core.pc);
			//save all FlagHandler class vairables
			addStaticObject("flags", saveFile.data, Core.flags);
			//save all EventHandler class variables
			addStaticObject("events", saveFile.data, Core.events);
			//Save container data
			addStaticObject("container", saveFile.data, Core.container);
			//save inventory data
			addStaticObject("inventory", saveFile.data, Core.bag);
			trace("save data", saveFile.data);
			if (saveFile.flush()) return true;
			return false;
		}
		//Copies all variables stored in the Object named in storeName
		public static function loadStaticObject(storeName:String, to:Object, from:Object) {
			trace(from[storeName]);
			for (var prop:String in from[storeName]) {
				to[prop] = from[storeName][prop];
			}
		}
		public static function loadData(slot:String):Boolean {
			var saveFile = SharedObject.getLocal(slot);
			if (saveFile.data.exists) {
				//Load Player data from saveFile.data
				loadStaticObject("player", Core.pc, saveFile.data);
				//Load FlagHandler data from saveFile.data
				loadStaticObject("flags", Core.flags, saveFile.data);
				//Load EventHandler data from saveFile.data
				loadStaticObject("events", Core.events, saveFile.data);
				//Load ContainerHandler data from saveFile.data
				loadStaticObject("container", Core.container, saveFile.data);
				//Load BagHandler data from saveFile.data
				loadStaticObject("inventory", Core.bag, saveFile.data);
				saveFile.flush();
				return true;
			}
			return false;
		}
	}
	
}
