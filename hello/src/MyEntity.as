package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class MyEntity extends Entity
	{
		[Embed(source = 'assets/boy.png')] private const PLAYER:Class;
		public function MyEntity()
		{
			graphic = new Image(PLAYER);
		}
		override public function update():void
		{
			if (Input.check(Key.LEFT))
			{
				x -= 5;
			}
			
			if (Input.check(Key.RIGHT))
			{
				x += 5;
			}
			
			if (Input.check(Key.UP))
			{
				y -= 5;
			}
			if (Input.check(Key.DOWN))
			{
				y += 5;
			}
			
		}
		
	}
	
}