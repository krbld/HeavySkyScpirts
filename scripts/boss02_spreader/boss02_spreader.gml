function boss02_spreader() {
	if(cooldown1 <= 0)
	{
		instance_create_layer(x + 32, y + 0, "Instances", boss01_slug);

		cooldown1 = 40;
	
		if(in_current_view == true)
		{
			boss_02_slug_sound = ds_list_find_value(player_controller.enemy_slugs, irandom_range(0,4));
			script_execute(sound_effect, boss_02_slug_sound, 0.3, 1);
		}
	}

	cooldown1 += -1;

	if(cooldown2 <= 0)
	{
		instance_create_layer(x + -32, y + 0, "Instances", boss01_slug);

		cooldown2 = 40;
	
		if(in_current_view == true)
		{
			boss_02_slug_sound_2 = ds_list_find_value(player_controller.enemy_slugs, irandom_range(0,4));
			script_execute(sound_effect, boss_02_slug_sound_2, 0.3, 1.12);
		}
	}

	cooldown2 += -1;


}
