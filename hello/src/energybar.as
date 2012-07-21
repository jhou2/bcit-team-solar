package 
{
	import flash.geom.Rectangle;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class energybar extends Entity 
	{
		private var value:Number;
		private var content:Image;
		private var background:Image;
		//private var bar:Image = Image.createRect(100, 20, 0xFFA500);
		//private var bar:Image = new Image('assets/energybar.png', new Rectangle(500,20,50,50));
		[Embed(source = 'assets/energybarcontent.png')] private const CONTENT:Class;
		[Embed(source = 'assets/energybarback.png')] private const BACKGROUND:Class;
		public function energybar()
		{
			content = new Image(CONTENT);
			background = new Image(BACKGROUND);
			super(500, 20, content);
			addGraphic(background);
			value = 0;
		}
		
		public function setValue(newValue:Number):void {
			if (newValue < 0) {
				value = 0;
			} else {
				value = newValue;
			}
		}
		
		public function getValue():Number {
			return value;
		}
		
		override public function update():void {
			content.clipRect.width = value*2.74+13;
			content.clear();
			content.updateBuffer();
			value += FP.elapsed * 5;
		}
	}
	
}