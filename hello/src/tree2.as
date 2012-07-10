package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class tree2 extends Entity 
	{
			[Embed(source = 'assets/conifer.png')] private const PLAYER:Class;
		public function tree2()
		{
			x = 600;
			y = 100;
			graphic = new Image(PLAYER);
		}
	}
	
}