package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class tree1 extends Entity 
	{
		[Embed(source = 'assets/trees/puff.png')] private const PLAYER:Class;
		public function tree1()
		{
			x = 300;
			y = 425;
			graphic = new Image(PLAYER);
		}
	}
	
}