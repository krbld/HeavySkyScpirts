var player_alive = instance_exists(player);

	if (global.player_is_alive) 
	{
		if (player_alive)
		{
			if player.x > 128 && player.x < 640 && player.y > 128 && player.y < 1260
				{
				player.x = device_mouse_x(0) + drag_offsetX;
				player.y = device_mouse_y(0) + drag_offsetY;
				}
	
			if player.x <= 128
			{
				player.x = 129
			}
	
			if player.x >= 640
			{
				player.x = 639
			}
	
			if player.y <= 128
			{
				player.y = 129
			}
	
			if player.y >= 1260
			{
				player.y = 1259
			}
	
			}
	
		else
			{

			}
}