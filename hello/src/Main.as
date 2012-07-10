package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class Main extends Engine 
	{
		
		public function Main()
		{
			super(800, 600, 60, false);
			FP.screen.color = 0xffffff;
			FP.world = new MyWorld;
		}
		
		override public function init():void {
			trace("FlashPunk has started successfully!");
		}
		
	
		
	}
	
}