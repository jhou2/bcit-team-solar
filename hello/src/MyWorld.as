package 
{
	import net.flashpunk.World;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class MyWorld extends World
	{
		
		public function MyWorld()
		{
			add(new line);
			add(new tree1);
			add(new tree2);
			add(new lotion);
		
			add(new energybar);
			add(new bottlebar);
			add(new goSign);
			add(new endSign);
			add(new MyBoy);
			
			
		}
	}
	
}