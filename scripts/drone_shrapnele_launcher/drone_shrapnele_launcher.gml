function drone_shrapnele_launcher() {
	var l62344680_0 = false;
	l62344680_0 = instance_exists(drone);
	if(l62344680_0)
	{
		var l3CA35994_0 = false;
		l3CA35994_0 = instance_exists(light_spawns);
		if(l3CA35994_0)
		{
			if(distance_to_object(light_spawns) <= 900)
			{
				if(shrapnele_cooldown <= 0)
				{
					instance_create_layer(x, y, "Instances", drone_shrapnel);
					shrapnele_cooldown = global.drone_shrapnel_attack_speed;
					the_missile_sound = ds_list_find_value(player_controller.drone_missiles, irandom_range(0,4));
					script_execute(sound_effect, the_missile_sound, 0.3, 1);
				}
		
				shrapnele_cooldown += -1;
			}
		}
	}


}
