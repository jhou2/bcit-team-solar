package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author joseph
	 */
	public class Bullet extends Entity 
	{
		[Embed(source = 'assets/player.png')] private const PLAYER:Class;
		
		public function Bullet()
		{
			x = 100;
			y = 100;
			graphic = new Image(PLAYER);
			setHitbox(10, 10);
			type = "bullet";
		}
		
		public function destroy():void {
			FP.world.remove(this);
		}
	}
	
}