package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * ...
	 * @author joseph
	 */
	public class MyBoy extends Entity
	{
		[Embed(source = 'assets/walkcycle/boy_all.png')] 
		private const PLAYER:Class;
		
		public var sprPlayer:Spritemap = new Spritemap(PLAYER, 50, 100);
		public var prevx:Number = 0;
		public var prevy:Number = 0;
		public var face:Number = 0;   // 0 = facing right, 1 = facing left.
		
		public var destx:Number = 0;
		public var desty:Number = 0;
		
	
		
		public function MyBoy()
		{
			setHitbox(40, 90);
			width = 50;
			height = 100;
			
			
			sprPlayer.add("right", [0, 1, 2, 3, 4, 5, 6, 7], 8, true);
			sprPlayer.add("stand-right", [1], 0, false);
			sprPlayer.add("left", [8, 9, 10, 11, 12, 13, 14, 15], 8, true);
			sprPlayer.add("stand-left", [8], 0, false);
		
			x = 10;
			y = 300;
			prevx = x;
			prevy = y;
			destx = x;
			desty = y;
			
			graphic = sprPlayer;
			sprPlayer.play("stand-right", true);
		}
		override public function update():void
		{
			var b:lotion = collide("lotion", x, y) as lotion;
			
			if (b)
			{
				b.movefar();
				
			}
			
			
			if (prevx == x && prevy == y) {
				if (face == 0){
					sprPlayer.play("stand-right");
				} else {
					sprPlayer.play("stand-left");
				}
			}
			if (prevx < x) {
				sprPlayer.play("right");
				face = 0;
			}
			
			if (prevx > x) {
				sprPlayer.play("left");
				face = 1;
			}
			
			if (prevy != y) {
				if (face == 0) {
					sprPlayer.play("right");
				} else {
					sprPlayer.play("left");
				}
				
			}
			
			prevx = x;
			prevy = y;
			
			if (Input.mousePressed)
			{
				destx = Input.mouseX;
				desty = Input.mouseY;
				
			}
			
			if ((x < destx) && (x < 750))
			{
				x += 5;
			}
			
			if ((x > destx) && (x > 5))
			{
				x -= 5;
			}
			
			if ((y > desty) && (y > 200))
			{
				y -= 5;
			}
			
			if ((y < desty) && (y < 500))
			{
				y += 5;
			}
			
			
			if (Input.check(Key.LEFT))
			{
				if (x > 5) {
					x -= 5;
					destx = x;
				}
			}
			
			if (Input.check(Key.RIGHT))
			{
				if(x < 750) {
					x += 5;
					destx = x;
				}
				
			}
			
			if (Input.check(Key.UP))
			{
				if (y > 200) {
					y -= 5;
					desty = y;
				}
			}
			if (Input.check(Key.DOWN))
			{
				if (y < 500) {
					y += 5;
					desty = y;
				}
			}
			
		}
		
	}
	
}