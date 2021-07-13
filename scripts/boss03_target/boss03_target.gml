function boss03_target() {
	var l7318A182_0 = false;
	l7318A182_0 = instance_exists(player);
	if(l7318A182_0)
	{
		if(cooldown <= 0)
		{
			instance_create_layer(x + 0, y + 0, "Instances", boss_03_slug);
	
			cooldown = 25;
		
			if(in_current_view == true)
				{
					the_boss_03_slug_sound = ds_list_find_value(player_controller.enemy_slugs, irandom_range(0,4));
				
					script_execute(sound_effect, the_boss_03_slug_sound, 0.4, 1.12);
				}
		}

		cooldown += -1;
	}


}
