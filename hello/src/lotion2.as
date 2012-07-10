package 
{
	import net.flashpunk.Entity;
		import net.flashpunk.graphics.Image;
		import net.flashpunk.FP;
	/**
	 * ...
	 * @author joseph
	 */
	public class lotion2 extends Entity 
	{
				[Embed(source = 'assets/bottle-ground.png')] private const PLAYER:Class;
		public function lotion2()
		{
			setHitbox(40, 56);
			width = 40;
			height = 56;
			
			type = "lotion";
			
			x = 150;
			y = 380;
			graphic = new Image(PLAYER);
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
	}
	
}