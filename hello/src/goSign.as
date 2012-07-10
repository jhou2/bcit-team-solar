package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class goSign extends Entity 
	{
		[Embed(source = 'assets/go-sign.png')] private const SIGN:Class;
		public function goSign()
		{
			x = 15;
			y = 250;
			graphic = new Image(SIGN);
		}
	}
	
}