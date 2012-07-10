package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author joseph
	 */
	public class line extends Entity 
	{
		[Embed(source = 'assets/background/fullcanvas.jpg')] private const PLAYER:Class;
		public function line()
		{
			x = 0;
			y = 0;
			graphic = new Image(PLAYER);
		}
	}
	
}