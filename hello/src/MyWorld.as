package 
{
	import net.flashpunk.World;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class MyWorld extends World
	{
		public static var c:energybar = new energybar;
		public static var d1:digit1 = new digit1;
		public static var d2:digit2 = new digit2;
		public function MyWorld()
		{
			
			
			add(new line);
			
			add(new tree2);	
		
			add(c);
			add(new bottlebar);
			add(d1);
			add(d2);
			add(new goSign);
			add(new endSign);
			add(new lotion);
			add(new MyBoy);
			add(new tree1);
			
			
		}
	}
	
}