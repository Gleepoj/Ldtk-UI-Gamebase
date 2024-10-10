package sample;
import ui.win.SimpleMenu;

/**
	This small class just creates a SamplePlayer instance in current level
**/
class SampleGame extends Game {
	var box:Bool = true;
	public function new() {
		super();
	}

	override function startLevel(l:World_Level) {
		super.startLevel(l);
		new SamplePlayer();
		var menu = new SimpleMenu();
		
		trace("launch sample game");
		//menu.addButton("Ballaruc",D.tiles.Button,true,function clicko() return trace("el button"););
		menu.addTitle("Simple Menu Window");
		menu.addTitle("Next Tilte");
		var t = Assets.tiles.getTile(D.tiles.Button);
		menu.addButton("New sub melu",t,false, function() return createMelut());
		menu.addCheckBox("Is ok", function get_box() return box, function set_box(v:Bool) return box = v, false);
	}
	
	function createMelut(){
		var melu = new SimpleMenu();
		melu.addTitle("New Melu");
		var t = Assets.tiles.getTile(D.tiles.Button);
		melu.addButton("Close Melu",t,true, function() return trace("Close melu"));
		melu.addCheckBox("Is ok", function get_box() return box, function set_box(v:Bool) return box = v, false);
		melu.addCheckBox("Is ok", function get_box() return box, function set_box(v:Bool) return box = v, false);
		melu.addCheckBox("Is ok", function get_box() return box, function set_box(v:Bool) return box = v, false);
		melu.addCheckBox("Is ok", function get_box() return box, function set_box(v:Bool) return box = v, false);

	}
}

