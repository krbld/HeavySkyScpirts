function drone_missile_launcher() {
	var l2B5EFF91_0 = false;
	l2B5EFF91_0 = instance_exists(drone);
	if(l2B5EFF91_0)
	{
		var l38AE4811_0 = false;
		l38AE4811_0 = instance_exists(heavy_bosses);
		if(l38AE4811_0)
		{
			if(distance_to_object(heavy_bosses) <= 900)
			{
				if(distance_to_object(heavy_bosses) < y)
				{
					if(missile_cooldown <= 0)
					{
						instance_create_layer(x, y, "Instances", drone_missile);
				
						missile_cooldown = global.homing_missile_attack_speed;
					
						the_missile_sound = ds_list_find_value(player_controller.drone_missiles, irandom_range(0,4));
						script_execute(sound_effect, the_missile_sound, 0.3, 1);
					}
			
					missile_cooldown += -1;
				}
			}
		}
	}


}
