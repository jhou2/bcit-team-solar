package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
		import net.flashpunk.graphics.Spritemap;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class digit1 extends Entity 
	{
		[Embed(source = 'assets/digits.png')] private const DIGIT:Class;
		public var sprDigit:Spritemap = new Spritemap(DIGIT, 30, 50);
		private var value:Number = 0;
		
		public function digit1()
		{
			sprDigit.add("0", [0], 0, false);
			sprDigit.add("1", [1], 0, false);
			sprDigit.add("2", [2], 0, false);
			sprDigit.add("3", [3], 0, false);
			sprDigit.add("4", [4], 0, false);
			sprDigit.add("5", [5], 0, false);
			sprDigit.add("6", [6], 0, false);
			sprDigit.add("7", [7], 0, false);
			sprDigit.add("8", [8], 0, false);
			sprDigit.add("9", [9], 0, false);
			
			x = 390;
			y = 20;
			graphic = sprDigit;
			
			sprDigit.play("0", true);
		}
		
		public function setValue(newValue:Number):void {
			if (newValue < 0) {
				value = 0;
			} else {
				value = newValue;
			}
			
			switch (value){

					case 0:
					sprDigit.play("0", true);
					break;

					case 1:
					sprDigit.play("1", true);
					break;

					case 2:
					sprDigit.play("2", true);
					break;
					
					case 3:
					sprDigit.play("3", true);
					break;
					
					case 4:
					sprDigit.play("4", true);
					break;
					
					case 5:
					sprDigit.play("5", true);
					break;
					
					case 6:
					sprDigit.play("6", true);
					break;
					
					case 7:
					sprDigit.play("7", true);
					break;
					
					case 8:
					sprDigit.play("8", true);
					break;

					case 9:
					sprDigit.play("9", true);
					break;

				}
			
		}
		
		
		
	}
	
}