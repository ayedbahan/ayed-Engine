import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.group.FlxGroup.FlxTypedGroup;
import Section.SwagSection;
import flixel.addons.display.FlxGridOverlay;
import flixel.FlxSprite;

class SectionRender extends FlxSprite
{
	public var section:SwagSection;
	public var icon:FlxSprite;
	public var lastUpdated:Bool;

	public function new(x:Float, y:Float, GRID_SIZE:Int, ?Height:Int = 16)
	{
		super(x, y);

		makeGraphic(GRID_SIZE * 8, GRID_SIZE * Height, 0xFF2F2F2F);

		var h = GRID_SIZE;
		if (Math.floor(h) != h)
			h = GRID_SIZE;

		if (FlxG.save.data.editorBG)
			FlxGridOverlay.overlay(this, GRID_SIZE, Std.int(h), GRID_SIZE * 8, GRID_SIZE * Height, true, 0xFF2F2F2F, 0xFF525252);
	}

	override function update(elapsed)
	{
	}
}
