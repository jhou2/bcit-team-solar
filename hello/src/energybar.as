package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class energybar extends Entity 
	{
		[Embed(source = 'assets/energybar.png')] private const PLAYER:Class;
		public function energybar()
		{
			x = 500;
			y = 20;
			graphic = new Image(PLAYER);
		}
	}
	
}