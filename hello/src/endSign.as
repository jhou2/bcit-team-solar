package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class endSign extends Entity 
	{
		[Embed(source = 'assets/end-sign.png')] private const SIGN:Class;
		public function endSign()
		{
			x = 680;
			y = 250;
			graphic = new Image(SIGN);
		}
	}
	
}