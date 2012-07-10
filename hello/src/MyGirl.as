package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class MyGirl extends Entity
	{
		[Embed(source = 'assets/girl.png')] private const PLAYER:Class;
		public function MyGirl()
		{
			graphic = new Image(PLAYER);
			setHitbox(50, 50);
		}
		override public function update():void
		{
			x = Input.mouseX;
			y = Input.mouseY;
			
			x = FP.world.mouseX;
			y = FP.world.mouseY;
			
		}
		
	}
	
}