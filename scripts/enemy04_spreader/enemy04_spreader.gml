function enemy04_spreader() {
	if(cooldown > 0)
	{
		instance_create_layer(x + 0, y + 0, "Instances", enemy04_slug);

		alarm_set(0, 5);
	
		if(in_current_view == true)
			{
				enemy_04_slug_sound = ds_list_find_value(player_controller.enemy_slugs, irandom_range(0,4));
			
				script_execute(sound_effect, enemy_04_slug_sound, 0.4, random_range(0.76, 1.24));
			}

	}

	cooldown += -1;


}
