function benemy01_target() {
	var l7318A182_0 = false;
	l7318A182_0 = instance_exists(boss02);
	if(l7318A182_0)
	{
		if(y > boss02.y)
		{
			var l0A37B8F6_0 = false;
			l0A37B8F6_0 = instance_exists(player);
			if(l0A37B8F6_0)
			{
				if(cooldown <= 0)
				{
					instance_create_layer(x + 0, y + 0, "Instances", benemy_shot);
			
					cooldown = 120;
				
					if(in_current_view == true)
						{
							benemy_01_shot = ds_list_find_value(player_controller.enemy_slugs, irandom_range(0,4));
						
							script_execute(sound_effect, benemy_01_shot, 0.4, random_range(0.88, 1.12));
						}
				
				
				}
		
				cooldown += -1;
			}
		}
	}


}
