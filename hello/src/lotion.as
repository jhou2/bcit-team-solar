package 
{
	import net.flashpunk.Entity;
		import net.flashpunk.graphics.Image;
		import net.flashpunk.FP;
	/**
	 * ...
	 * @author joseph
	 */
	public class lotion extends Entity 
	{
				[Embed(source = 'assets/bottle-ground.png')] private const PLAYER:Class;
		public function lotion()
		{
			setHitbox(30, 45);
			width = 40;
			height = 56;
			
			type = "lotion";
			
			x = Math.random() * 500;
			
			y = Math.random() * 300 + 200;
			graphic = new Image(PLAYER);
		}
		
		public function movefar():void
		{
			x = Math.random() * 750;
			y = Math.random() * 300 + 200;
			
		}
	}
	
}