package 
{
	
	/**
	 * ...
	 * @author joseph
	 */
	public class printLotion 
	{
		private var tens:Number = 0;
		private var ones:Number = 0;
		private var maxNum:Number = 100;
		
		public function printLotion() {
			
		}
		
		public function print(newValue:Number):void {
			ones = newValue % 10;
			tens = int(newValue / 10);
			if (newValue < maxNum) {
				MyWorld.d1.setValue(tens);
				MyWorld.d2.setValue(ones);
			}
		}	
		
		
	}
	
}